require 'net/https'
require File.join(File.dirname(__FILE__),'request')
require File.join(File.dirname(__FILE__),'response')
require File.join(File.dirname(__FILE__),'utils/crypto_utils')

module HealthVault
  class Connection
    include WCData
    attr_accessor :user_auth_token
    attr_reader :session_token, :shared_secret, :application
    
    def initialize(application)
      @application = application
    end
    
    def authenticate
      @shared_secret = CryptoUtils.create_shared_secret
      @session_token = nil
      request = Request.create("CreateAuthenticatedSessionToken", self)
      request.info.auth_info.app_id.data = application.id
      request.info.auth_info.credential.appserver = Types::AppServerCred.new
      request.info.auth_info.credential.appserver.content.app_id = application.id
      request.info.auth_info.credential.appserver.content.shared_secret.hmac_alg.alg_name = "HMACSHA1"
      request.info.auth_info.credential.appserver.content.shared_secret.hmac_alg.data = CryptoUtils.encode64(shared_secret)
      request.info.auth_info.credential.appserver.sig.digest_method = "SHA1"
      request.info.auth_info.credential.appserver.sig.sig_method = "RSA-SHA1"
      request.info.auth_info.credential.appserver.sig.thumbprint = application.key.fingerprint
      request.info.auth_info.credential.appserver.sig.data = 
        CryptoUtils.encode64(application.key.sign(
          request.info.auth_info.credential.appserver.content.element('content').to_s))
      
      response = request.send
      @session_token = response.info.token[0].data
    end
    
    def authenticated?(user_or_app = :app)
      if user_or_app == :app
        return !session_token.nil?
      else
        return !user_auth_token.nil?
      end
    end
    
    def send(request)
      https_endpoint = Net::HTTP.new(application.uri.host, application.uri.port)
      https_endpoint.use_ssl = true
      #http_endpoint.verify_mode = OpenSSL::SSL::VERIFY_PEER
      https_endpoint.ca_file = File.join(File.dirname(__FILE__), "certs/cacert.pem")
      content = request.to_s
      Configuration.instance.logger.debug content
      http_header = {'Content-Type' => 'text/xml'}
      return Response.new(https_endpoint.post(application.uri.path, content, http_header))    
    end
  end
end

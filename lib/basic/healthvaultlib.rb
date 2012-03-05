#
# (c) Copyright Microsoft Corporation. 
# This source is subject to the Microsoft Public License.
# See http://www.microsoft.com/opensource/licenses.mspx#Ms-PL       
#
require 'net/https'
require 'net/http'
require 'rexml/document'
require 'crypto-key'

module HealthVaultLib

 def self.get_hvresponse(body,headers,server='platform.healthvault-ppe.com',
  path='//platform//wildcat.ashx')
    http = Net::HTTP.new(server,443)
    req = Net::HTTP::Get.new(path)
    http.use_ssl = true
    return http.post(path, body, headers)
  end
  
 def self.getmethods
  headers = {
  'Content-Type' => 'text/xml'
  }
  body = <<EOB
    <wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
    <header>
        <method>GetServiceDefinition</method>
        <method-version>1</method-version>
        <app-id>05a059c9-c309-46af-9b86-b06d42510550</app-id>       
        <language>en</language>
        <country>US</country>
        <msg-time>2010-01-01T00:00:00Z</msg-time>
        <msg-ttl>36000</msg-ttl>
        <version>0.0.0.1</version>
    </header>
    <info></info>
    </wc-request:request>
EOB
 resp, data = get_hvresponse(body, headers)
 puts data
 doc = REXML::Document.new data
 m = []
 REXML::XPath.each(doc, "//xml-method/name") do
   |method|
   m << method.text
 end
 m
end

 # We need an authentication token to interact with healthvault
 def self.getauthenticationtoken
  headers = {
  'Content-Type' => 'text/xml'
  }
  base64secret=Crypto::generate_secret_with_openssl
  thumbprint= File.read('lib/certs/helloworld.fp')
  #Chomping to eliminate white space
  private_key = Crypto::Key.from_file('lib/certs/helloworld.pem')
  base64secret=Crypto::generate_secret_with_openssl.chomp
  #BUGBUG: White space matter here!
  contentnew='<content><app-id>05a059c9-c309-46af-9b86-b06d42510550</app-id><shared-secret><hmac-alg algName="HMACSHA1">'+base64secret+'</hmac-alg></shared-secret></content>'
  #Chomping to eliminate white space
  base64signedcontentnew = private_key.sign(contentnew).chomp

  info = <<EOI
  <auth-info>
     <app-id>05a059c9-c309-46af-9b86-b06d42510550</app-id>
     <credential>
	<appserver>
	  <sig digestMethod="SHA1" sigMethod="RSA-SHA1" thumbprint="#{thumbprint}">#{base64signedcontentnew}</sig>#{contentnew}</appserver>
     </credential>
  </auth-info>
EOI
  body = <<EOB
    <wc-request:request xmlns:wc-request="urn:com.microsoft.wc.request">
    <header>
        <method>CreateAuthenticatedSessionToken</method>
        <method-version>1</method-version>
        <app-id>05a059c9-c309-46af-9b86-b06d42510550</app-id>       
        <language>en</language>
        <country>US</country>
        <msg-time>2010-01-01T00:00:00Z</msg-time>
        <msg-ttl>36000</msg-ttl>
        <version>0.0.0.1</version>
    </header>
    <info>#{info}</info>
    </wc-request:request>
EOB
  resp, data =  get_hvresponse(body, headers)
  doc = REXML::Document.new data
  token = ""
  REXML::XPath.each(doc, "//token") do 
	  |t|
	  token << t.text
  end
  token
 end
end


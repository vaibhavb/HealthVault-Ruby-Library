#
# (c) Copyright Microsoft Corporation. 
# This source is subject to the Microsoft Public License.
# See http://www.microsoft.com/opensource/licenses.mspx#Ms-PL       
#

require 'openssl' 
require 'base64'

# Documentation at http://net-ssh.rubyforge.org/api/classes/OpenSSL/PKey/RSA.html
module Crypto
  
  # Not used but a utility
  def self.create_keys(priv = "rsa_key", pub = "#{priv}.pub", bits = 1024)
    private_key = OpenSSL::PKey::RSA.new(bits)
    File.open(priv, "w+") { |fp| fp << private_key.to_s }
    File.open(pub,  "w+") { |fp| fp << private_key.public_key.to_s }    
    private_key
  end
 
  def self.generate_secret_with_openssl
    if !File.exist?("/dev/urandom")
       # OpenSSL transparently seeds the random number generator with
       # data from /dev/urandom. On platforms where that is not
       # available, such as Windows, we have to provide OpenSSL with
       # our own seed. Unfortunately there's no way to provide a
       # secure seed without OS support, so we'll have to do with
       # rand() and Time.now.usec().
       OpenSSL::Random.seed(rand(0).to_s + Time.now.usec.to_s)
    end
    data = OpenSSL::BN.rand(2048, -1, false).to_s
    return Base64.encode64(OpenSSL::Digest::SHA1.new(data).hexdigest)
  end
  
  class Key
    def initialize(data)
      # We are assuming private key as of now!
      #@public = (data =~ /^-----BEGIN (RSA|DSA) PRIVATE KEY-----$/).nil?
      @public = false
      @key = OpenSSL::PKey::RSA.new(data)
      end
    
    def self.from_file(filename)
      self.new File.read( filename )
      end
    
    def encrypt(text)
      Base64.encode64(@key.send("#{key_type}_encrypt", text))
    end
    
    def sign(text)
      Base64.encode64(@key.send("sign", OpenSSL::Digest::SHA1.new, text))
    end

    def sign_other(text)
      digest = OpenSSL::Digest::SHA1.new(text).to_s
      encrypt(digest)
    end

    def sign_other1(text)
      digest = OpenSSL::Digest::SHA1.new
      text.each_byte{ |c| digest.update(c.to_s) }
      digest = digest.hexdigest
      encrypt(digest)
    end

    def verify(sig, text)
      @key.send("verify", OpenSSL::Digest::SHA1.new, Base64.decode64(sig), text)
    end

    def decrypt(text)
      @key.send("#{key_type}_decrypt", Base64.decode64(text))
    end
    
    def private?
      !@public  
      end
    
    def public?
      @public   
      end
    
    def key_type
      @public ? :public : :private
      end
    end
    
end

module HealthVault
  module WCData
  module Auth
  
      class AuthSessionCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The user's credential that will be used with the application's credential to create the session.
#<em>value</em> is a HealthVault::WCData::Auth::AuthSessionSubCredential
        def sub_credential=(value)
          @children['sub-credential'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthSessionSubCredential
        def sub_credential
          return @children['sub-credential'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The shared secret is used to authenticate all requests which include the token produced on succesful authentication. In order for a client to establish an authenticated session with the Microsoft Health Service, it must provide a shared secret. The client uses the secret as the secret key when HMAC'ing over the header section of the request. The resulting HMAC digest forms the content of the request auth section.
#<em>value</em> is a HealthVault::WCData::Types::HMACAlgorithm
        def shared_secret=(value)
          @children['shared-secret'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HMACAlgorithm
        def shared_secret
          return @children['shared-secret'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'authsessioncredential'
        
          
          @children['sub-credential'] = {:name => 'sub-credential', :class => HealthVault::WCData::Auth::AuthSessionSubCredential, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['sub-credential'][:value] = HealthVault::WCData::Auth::AuthSessionSubCredential.new
            
          
        
          
          @children['shared-secret'] = {:name => 'shared-secret', :class => HealthVault::WCData::Types::HMACAlgorithm, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['shared-secret'][:value] = HealthVault::WCData::Types::HMACAlgorithm.new
            
          
        
        end
      end
  end
  
  end
end

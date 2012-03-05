module HealthVault
  module WCData
  module Auth
  
      class UserPassAuthSessionCred < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The username of the person being authenticated.
#<b>remarks</b>: Each user has a unique username and an associated password.
#<em>value</em> is a HealthVault::WCData::Types::String128
        def username=(value)
          @children['username'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128
        def username
          return @children['username'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The user's password.
#<b>remarks</b>: The password used to authenticate the user via the provided username.
#<em>value</em> is a HealthVault::WCData::Types::String1024
        def password=(value)
          @children['password'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String1024
        def password
          return @children['password'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The shared secret used to establish the authenticated session with Microsoft HealthVault.
#<b>remarks</b>: The shared secret is used to authenticate all requests which include the token produced on succesful authentication. In order for a client to establish an authenticated session with the Microsoft Health Service, it must provide a shared secret. The client uses the secret as the secret key when HMAC'ing over the header section of the request. The resulting HMAC digest forms the content of the request auth section.
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
          self.tag_name = 'userpassauthsessioncred'
        
          
          @children['username'] = {:name => 'username', :class => HealthVault::WCData::Types::String128, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['username'][:value] = HealthVault::WCData::Types::String128.new
            
          
        
          
          @children['password'] = {:name => 'password', :class => HealthVault::WCData::Types::String1024, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['password'][:value] = HealthVault::WCData::Types::String1024.new
            
          
        
          
          @children['shared-secret'] = {:name => 'shared-secret', :class => HealthVault::WCData::Types::HMACAlgorithm, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['shared-secret'][:value] = HealthVault::WCData::Types::HMACAlgorithm.new
            
          
        
        end
      end
  end
  
  end
end

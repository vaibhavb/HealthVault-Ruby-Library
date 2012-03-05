module HealthVault
  module WCData
  module Methods
  module CreateAuthenticatedSessionToken
  
      class Credential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Web application server credential.
#<b>remarks</b>: The credential is a signed request showing proof-of-posession of the application-specific private key. This credential may be used to establish two modes of authentication. First, it may be used to create an trusted anonymous session in the context of the application. Secondly, it may be used to create a trusted session in the context of a specified user.
#<em>value</em> is a HealthVault::WCData::Types::AppServerCred
        def appserver=(value)
          @children['appserver'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppServerCred
        def appserver
          return @children['appserver'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A credential consisting of username and password.
#<b>remarks</b>: This is for test purposes only. Both the username and password are in plaintext.
#<em>value</em> is a HealthVault::WCData::Auth::UserPassAuthSessionCred
        def userpassauthsession=(value)
          @children['userpassauthsession'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::UserPassAuthSessionCred
        def userpassauthsession
          return @children['userpassauthsession'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'credential'
        
          
          @children['appserver'] = {:name => 'appserver', :class => HealthVault::WCData::Types::AppServerCred, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 444600438 }
            
          
        
          
          @children['userpassauthsession'] = {:name => 'userpassauthsession', :class => HealthVault::WCData::Auth::UserPassAuthSessionCred, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 444600438 }
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module CreateAuthenticatedSessionToken
  
      class AuthTokenInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Application identifier for the authenticated session.
#<b>remarks</b>: In order for a session to be created, the user must grant access to the application to run in the context of the user. If permission has not been granted, this will result in a access denied error.
#<em>value</em> is a HealthVault::WCData::Types::AppInfo
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppInfo
        def app_id
          return @children['app-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Credential in which the authenticated session will be in the context of.
#<b>remarks</b>: The credential serves two purposes. First, it must be verified as valid. Once verified, the credential provides the authentication context for the session.
#<em>value</em> is a HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::Credential
        def credential=(value)
          @children['credential'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::Credential
        def credential
          return @children['credential'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'authtokeninfo'
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::AppInfo, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['app-id'][:value] = HealthVault::WCData::Types::AppInfo.new
            
          
        
          
          @children['credential'] = {:name => 'credential', :class => HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::Credential, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['credential'][:value] = HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::Credential.new
            
          
        
        end
      end
  end
  end
  
  end
end

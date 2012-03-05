module HealthVault
  module WCData
  module Methods
  module CreateAuthenticatedSessionToken
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Parameters for creating an authenticated session token.
#<b>remarks</b>: The caller must provide the application information as well as the user credential for which the session will be in the context of.
#<em>value</em> is a HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::AuthTokenInfo
        def auth_info=(value)
          @children['auth-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::AuthTokenInfo
        def auth_info
          return @children['auth-info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['auth-info'] = {:name => 'auth-info', :class => HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::AuthTokenInfo, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['auth-info'][:value] = HealthVault::WCData::Methods::CreateAuthenticatedSessionToken::AuthTokenInfo.new
            
          
        
        end
      end
  end
  end
  
  end
end

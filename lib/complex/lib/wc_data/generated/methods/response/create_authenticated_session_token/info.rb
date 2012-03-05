module HealthVault
  module WCData
  module Methods
  module Response
  module CreateAuthenticatedSessionToken
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Auth::Token
        def add_token(value)
          @children['token'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Auth::Token
        def remove_token(value)
            @children['token'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The authenticated session token.
#<b>remarks</b>: The token has a limited time-to-live. When the token expires, requests will fail with access denied. If there is no token, then there must be an absence reason.
#<b>returns</b>: a HealthVault::WCData::Auth::Token Array
        def token
          return @children['token'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AppAuthTokenAbsenceReason
        def add_token_absence_reason(value)
          @children['token-absence-reason'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AppAuthTokenAbsenceReason
        def remove_token_absence_reason(value)
            @children['token-absence-reason'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The reason the token could not be created.
#<b>remarks</b>: If the token can be created, then there will be no absence reason.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AppAuthTokenAbsenceReason Array
        def token_absence_reason
          return @children['token-absence-reason'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['token'] = {:name => 'token', :class => HealthVault::WCData::Auth::Token, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 175141532 }
          
        
          
          @children['token-absence-reason'] = {:name => 'token-absence-reason', :class => HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AppAuthTokenAbsenceReason, :value => Array.new, :min => 1, :max => 999999, :order => 2, :place => :element, :choice => 175141532 }
          
        
        end
      end
  end
  end
  end
  
  end
end

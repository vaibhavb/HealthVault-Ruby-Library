module HealthVault
  module WCData
  module Request
  
      class AuthenticatedSessionInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Primary authentication token.
#<b>remarks</b>: This token may specify an application or an application and a user.
#<em>value</em> is a String
        def auth_token=(value)
          @children['auth-token'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auth_token
          return @children['auth-token'][:value]
        end
       
     
       
        
        #<b>summary</b>: A user authentication token used by an application server to specify a user.
#<b>remarks</b>: This token must be issued for the same application that is specified in the auth-token section.
#<em>value</em> is a String
        def user_auth_token=(value)
          @children['user-auth-token'][:value] = value
        end
        
        #<b>returns</b>: a String
        def user_auth_token
          return @children['user-auth-token'][:value]
        end
       
     
       
        
        #<b>summary</b>: Offline-person-info, means person is not logged in.
#<b>remarks</b>: An application that is making an offline request must provide an auth-token.
#<em>value</em> is a HealthVault::WCData::Request::OfflinePersonInfo
        def offline_person_info=(value)
          @children['offline-person-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Request::OfflinePersonInfo
        def offline_person_info
          return @children['offline-person-info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'authenticatedsessioninfo'
        
          
          @children['auth-token'] = {:name => 'auth-token', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['auth-token'][:value] = String.new
            
          
        
          
          @children['user-auth-token'] = {:name => 'user-auth-token', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 95228415 }
            
          
        
          
          @children['offline-person-info'] = {:name => 'offline-person-info', :class => HealthVault::WCData::Request::OfflinePersonInfo, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 95228415 }
            
          
        
        end
      end
  end
  
  end
end

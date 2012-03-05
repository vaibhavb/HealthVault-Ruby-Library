module HealthVault
  module WCData
  module Auth
  
      class Token < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringz1024
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz1024
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The guid of the application id for which the authenticated session token was created.
#<b>remarks</b>: This application id will be the same as the one specified in the request.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def app_id
          return @children['app-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The states of application-record authorization.
#<b>remarks</b>: If there are actions required, then the enumeration value describes the required user action to successfully create a token.
#<em>value</em> is a HealthVault::WCData::Types::AppRecordAuthAction
        def app_record_auth_action=(value)
          @children['app-record-auth-action'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppRecordAuthAction
        def app_record_auth_action
          return @children['app-record-auth-action'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'token'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Stringz1024, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Stringz1024.new
            
          
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['app-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['app-record-auth-action'] = {:name => 'app-record-auth-action', :class => HealthVault::WCData::Types::AppRecordAuthAction, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['app-record-auth-action'][:value] = HealthVault::WCData::Types::AppRecordAuthAction.new
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module CreateAuthenticatedSessionToken
  
      class AppAuthTokenAbsenceReason < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AuthTokenAbsenceReason
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AuthTokenAbsenceReason
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The reason the request failed.
#<b>remarks</b>: See the specific absence reasons for user-actionable details.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def app_id
          return @children['app-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appauthtokenabsencereason'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AuthTokenAbsenceReason, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Methods::Response::CreateAuthenticatedSessionToken::AuthTokenAbsenceReason.new
            
          
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['app-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

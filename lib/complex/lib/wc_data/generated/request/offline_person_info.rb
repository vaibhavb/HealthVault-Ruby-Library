module HealthVault
  module WCData
  module Request
  
      class OfflinePersonInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def offline_person_id=(value)
          @children['offline-person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def offline_person_id
          return @children['offline-person-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'offlinepersoninfo'
        
          
          @children['offline-person-id'] = {:name => 'offline-person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['offline-person-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  
  end
end

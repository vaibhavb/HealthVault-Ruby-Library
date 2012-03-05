module HealthVault
  module WCData
  module Notification
  
      class Thing < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier of the HealthVault Thing.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def thing_id=(value)
          @children['thing-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def thing_id
          return @children['thing-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thing'
        
          
          @children['thing-id'] = {:name => 'thing-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['thing-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  
  end
end

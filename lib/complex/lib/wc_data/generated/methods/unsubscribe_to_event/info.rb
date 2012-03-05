module HealthVault
  module WCData
  module Methods
  module UnsubscribeToEvent
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The identifier of the subscription to remove.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def subscription_id=(value)
          @children['subscription-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def subscription_id
          return @children['subscription-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['subscription-id'] = {:name => 'subscription-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['subscription-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  end
  
  end
end

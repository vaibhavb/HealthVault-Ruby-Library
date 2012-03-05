module HealthVault
  module WCData
  module Subscription
  
      class RecordItemChangedEventFilter < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The type ids for which notifications are enabled on this subscription.
#<em>value</em> is a HealthVault::WCData::Subscription::TypeIds
        def type_ids=(value)
          @children['type-ids'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::TypeIds
        def type_ids
          return @children['type-ids'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'recorditemchangedeventfilter'
        
          
          @children['type-ids'] = {:name => 'type-ids', :class => HealthVault::WCData::Subscription::TypeIds, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['type-ids'][:value] = HealthVault::WCData::Subscription::TypeIds.new
            
          
        
        end
      end
  end
  
  end
end

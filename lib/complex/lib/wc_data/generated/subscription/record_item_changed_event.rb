module HealthVault
  module WCData
  module Subscription
  
      class RecordItemChangedEvent < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: List of filters that define when a notification is sent.
#<b>remarks</b>: If a changed thing matches any of these filters, a notification will be sent.
#<em>value</em> is a HealthVault::WCData::Subscription::RecordItemChangedEventFilters
        def filters=(value)
          @children['filters'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::RecordItemChangedEventFilters
        def filters
          return @children['filters'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'recorditemchangedevent'
        
          
          @children['filters'] = {:name => 'filters', :class => HealthVault::WCData::Subscription::RecordItemChangedEventFilters, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['filters'][:value] = HealthVault::WCData::Subscription::RecordItemChangedEventFilters.new
            
          
        
        end
      end
  end
  
  end
end

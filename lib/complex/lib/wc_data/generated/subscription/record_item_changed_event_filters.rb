module HealthVault
  module WCData
  module Subscription
  
      class RecordItemChangedEventFilters < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Subscription::RecordItemChangedEventFilter
        def add_filter(value)
          @children['filter'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Subscription::RecordItemChangedEventFilter
        def remove_filter(value)
            @children['filter'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Subscription::RecordItemChangedEventFilter Array
        def filter
          return @children['filter'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'recorditemchangedeventfilters'
        
          
          @children['filter'] = {:name => 'filter', :class => HealthVault::WCData::Subscription::RecordItemChangedEventFilter, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

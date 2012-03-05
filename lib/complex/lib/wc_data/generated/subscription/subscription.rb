module HealthVault
  module WCData
  module Subscription
  
      class Subscription < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Subscription::Common
        def common=(value)
          @children['common'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::Common
        def common
          return @children['common'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Subscription::RecordItemChangedEvent
        def record_item_changed_event=(value)
          @children['record-item-changed-event'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::RecordItemChangedEvent
        def record_item_changed_event
          return @children['record-item-changed-event'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'subscription'
        
          
          @children['common'] = {:name => 'common', :class => HealthVault::WCData::Subscription::Common, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['common'][:value] = HealthVault::WCData::Subscription::Common.new
            
          
        
          
          @children['record-item-changed-event'] = {:name => 'record-item-changed-event', :class => HealthVault::WCData::Subscription::RecordItemChangedEvent, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 192713005 }
            
          
        
        end
      end
  end
  
  end
end

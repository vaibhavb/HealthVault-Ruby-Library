module HealthVault
  module WCData
  module Subscription
  
      class Subscriptions < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Subscription::Subscription
        def add_subscription(value)
          @children['subscription'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Subscription::Subscription
        def remove_subscription(value)
            @children['subscription'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::Subscription Array
        def subscription
          return @children['subscription'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'subscriptions'
        
          
          @children['subscription'] = {:name => 'subscription', :class => HealthVault::WCData::Subscription::Subscription, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

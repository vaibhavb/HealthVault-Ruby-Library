module HealthVault
  module WCData
  module Methods
  module SubscribeToEvent
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The subscription to create in HealthVault.
#<em>value</em> is a HealthVault::WCData::Subscription::Subscription
        def subscription=(value)
          @children['subscription'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::Subscription
        def subscription
          return @children['subscription'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['subscription'] = {:name => 'subscription', :class => HealthVault::WCData::Subscription::Subscription, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['subscription'][:value] = HealthVault::WCData::Subscription::Subscription.new
            
          
        
        end
      end
  end
  end
  
  end
end

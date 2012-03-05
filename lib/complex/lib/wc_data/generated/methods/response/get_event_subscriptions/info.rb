module HealthVault
  module WCData
  module Methods
  module Response
  module GetEventSubscriptions
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The collection of subscriptions for the calling application.
#<em>value</em> is a HealthVault::WCData::Subscription::Subscriptions
        def subscriptions=(value)
          @children['subscriptions'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::Subscriptions
        def subscriptions
          return @children['subscriptions'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['subscriptions'] = {:name => 'subscriptions', :class => HealthVault::WCData::Subscription::Subscriptions, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['subscriptions'][:value] = HealthVault::WCData::Subscription::Subscriptions.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

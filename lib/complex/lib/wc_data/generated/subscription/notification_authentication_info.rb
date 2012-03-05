module HealthVault
  module WCData
  module Subscription
  
      class NotificationAuthenticationInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Subscription::HVEventingSharedKey
        def hv_eventing_shared_key=(value)
          @children['hv-eventing-shared-key'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::HVEventingSharedKey
        def hv_eventing_shared_key
          return @children['hv-eventing-shared-key'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'notificationauthenticationinfo'
        
          
          @children['hv-eventing-shared-key'] = {:name => 'hv-eventing-shared-key', :class => HealthVault::WCData::Subscription::HVEventingSharedKey, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 246255933 }
            
          
        
        end
      end
  end
  
  end
end

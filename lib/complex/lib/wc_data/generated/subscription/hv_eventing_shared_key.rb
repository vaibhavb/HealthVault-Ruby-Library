module HealthVault
  module WCData
  module Subscription
  
      class HVEventingSharedKey < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The base64 encoded key bytes.
#<b>remarks</b>: The length of the key must be 64 bytes before any base64 encoding is applied. The key is used by the HealthVault service as the key input to the HMACSHA256 algorithm. The hash that is output by the algorithm is sent with notifications that HealthVault delivers to the subscription's notification channel. If a key is changed, the version key id should also be changed so that the notification handler can support both keys during the changeover period.
#<em>value</em> is a HealthVault::WCData::Types::String128nw
        def notification_key=(value)
          @children['notification-key'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128nw
        def notification_key
          return @children['notification-key'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A string representing the version of the key.
#<b>remarks</b>: Subscriptions can be updated with new notification keys using the UpdateEventSubscription method. When an update is made to a subscription, for a period of time, notification deliveries by the HealthVault service for the subscription, may use either the old key or the updated key to calculate the notification payload HMAC. The key version id is also sent with the notification, allowing the app to determine which key was used to calculate the notification payload HMAC.
#<em>value</em> is a HealthVault::WCData::Subscription::EventingKeyVersionId
        def notification_key_version_id=(value)
          @children['notification-key-version-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::EventingKeyVersionId
        def notification_key_version_id
          return @children['notification-key-version-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'hveventingsharedkey'
        
          
          @children['notification-key'] = {:name => 'notification-key', :class => HealthVault::WCData::Types::String128nw, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['notification-key'][:value] = HealthVault::WCData::Types::String128nw.new
            
          
        
          
          @children['notification-key-version-id'] = {:name => 'notification-key-version-id', :class => HealthVault::WCData::Subscription::EventingKeyVersionId, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['notification-key-version-id'][:value] = HealthVault::WCData::Subscription::EventingKeyVersionId.new
            
          
        
        end
      end
  end
  
  end
end

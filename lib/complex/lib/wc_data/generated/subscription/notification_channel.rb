module HealthVault
  module WCData
  module Subscription
  
      class NotificationChannel < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Subscription::HttpNotificationChannel
        def http_notification_channel=(value)
          @children['http-notification-channel'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::HttpNotificationChannel
        def http_notification_channel
          return @children['http-notification-channel'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'notificationchannel'
        
          
          @children['http-notification-channel'] = {:name => 'http-notification-channel', :class => HealthVault::WCData::Subscription::HttpNotificationChannel, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 357491178 }
            
          
        
        end
      end
  end
  
  end
end

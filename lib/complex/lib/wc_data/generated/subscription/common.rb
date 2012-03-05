module HealthVault
  module WCData
  module Subscription
  
      class Common < ComplexType
        
     
       
        
        #<b>summary</b>: The unique indentifier of this subscription.
#<b>remarks</b>: A notification handler that handles multiple subscriptions can use this identifier to tell them apart.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The information used to validate the source of notifications.
#<b>remarks</b>: For notification channels where the HealthVault service pushes notifications to an application's end-point (ie. an HTTPS notification channel), this information can be used by the application to validate that the incoming notification was sent by the HealthVault service.
#<em>value</em> is a HealthVault::WCData::Subscription::NotificationAuthenticationInfo
        def notification_authentication_info=(value)
          @children['notification-authentication-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::NotificationAuthenticationInfo
        def notification_authentication_info
          return @children['notification-authentication-info'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The destination of the notification.
#<b>remarks</b>: HealthVault will send all notifications for this subscription using this channel information.
#<em>value</em> is a HealthVault::WCData::Subscription::NotificationChannel
        def notification_channel=(value)
          @children['notification-channel'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Subscription::NotificationChannel
        def notification_channel
          return @children['notification-channel'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'common'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['notification-authentication-info'] = {:name => 'notification-authentication-info', :class => HealthVault::WCData::Subscription::NotificationAuthenticationInfo, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['notification-authentication-info'][:value] = HealthVault::WCData::Subscription::NotificationAuthenticationInfo.new
            
          
        
          
          @children['notification-channel'] = {:name => 'notification-channel', :class => HealthVault::WCData::Subscription::NotificationChannel, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['notification-channel'][:value] = HealthVault::WCData::Subscription::NotificationChannel.new
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Notification
  
      class Notifications < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Notification::Notification
        def add_notification(value)
          @children['notification'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Notification::Notification
        def remove_notification(value)
            @children['notification'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Notification::Notification Array
        def notification
          return @children['notification'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'notifications'
        
          
          @children['notification'] = {:name => 'notification', :class => HealthVault::WCData::Notification::Notification, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Notification
  
      class Notification < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Notification::Common
        def common=(value)
          @children['common'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Notification::Common
        def common
          return @children['common'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Notification::RecordChangeNotification
        def record_change_notification=(value)
          @children['record-change-notification'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Notification::RecordChangeNotification
        def record_change_notification
          return @children['record-change-notification'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'notification'
        
          
          @children['common'] = {:name => 'common', :class => HealthVault::WCData::Notification::Common, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['common'][:value] = HealthVault::WCData::Notification::Common.new
            
          
        
          
          @children['record-change-notification'] = {:name => 'record-change-notification', :class => HealthVault::WCData::Notification::RecordChangeNotification, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 519403435 }
            
          
        
        end
      end
  end
  
  end
end

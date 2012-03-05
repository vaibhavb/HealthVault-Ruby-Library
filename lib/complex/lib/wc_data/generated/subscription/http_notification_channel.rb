module HealthVault
  module WCData
  module Subscription
  
      class HttpNotificationChannel < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The url where HealthVault will send the notification. The url must start with https.
#<em>value</em> is a String
        def url=(value)
          @children['url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def url
          return @children['url'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'httpnotificationchannel'
        
          
          @children['url'] = {:name => 'url', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['url'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

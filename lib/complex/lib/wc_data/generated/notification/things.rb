module HealthVault
  module WCData
  module Notification
  
      class Things < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Notification::Thing
        def add_thing(value)
          @children['thing'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Notification::Thing
        def remove_thing(value)
            @children['thing'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Notification::Thing Array
        def thing
          return @children['thing'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'things'
        
          
          @children['thing'] = {:name => 'thing', :class => HealthVault::WCData::Notification::Thing, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module OverwriteThings
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::ThingKey
        def add_thing_id(value)
          @children['thing-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::ThingKey
        def remove_thing_id(value)
            @children['thing-id'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Information about the thing that was created or modified. This includes the thing-id of the thing that was created or modified, and a version stamp.
#<b>returns</b>: a HealthVault::WCData::Thing::ThingKey Array
        def thing_id
          return @children['thing-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing-id'] = {:name => 'thing-id', :class => HealthVault::WCData::Thing::ThingKey, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

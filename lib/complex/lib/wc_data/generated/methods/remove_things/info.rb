module HealthVault
  module WCData
  module Methods
  module RemoveThings
  
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
        #<b>summary</b>: The list identifying the specific things to be deleted.
#<b>remarks</b>: A thing-revision uniquely identifies a thing at a specific point in thime
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

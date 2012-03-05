module HealthVault
  module WCData
  module Methods
  module OverwriteThings
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Thing
        def add_thing(value)
          @children['thing'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Thing
        def remove_thing(value)
            @children['thing'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The thing to be updated. If the thing-id exists, then the previous thing is updated. If thing-id is not provided, then a new thing is created.
#<b>returns</b>: a HealthVault::WCData::Thing::Thing Array
        def thing
          return @children['thing'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing'] = {:name => 'thing', :class => HealthVault::WCData::Thing::Thing, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

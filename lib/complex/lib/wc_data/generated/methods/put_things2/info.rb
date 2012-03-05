module HealthVault
  module WCData
  module Methods
  module PutThings2
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Thing2
        def add_thing(value)
          @children['thing'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Thing2
        def remove_thing(value)
            @children['thing'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The thing to be created or updated. If the thing-id exists, then the previous thing is updated. If thing-id is not provided, then a new thing is created.
#<b>remarks</b>: If the request updates an existing thing but does not include any non-empty data elements, the request will return successfully but the thing will not be changed.
#<b>returns</b>: a HealthVault::WCData::Thing::Thing2 Array
        def thing
          return @children['thing'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing'] = {:name => 'thing', :class => HealthVault::WCData::Thing::Thing2, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

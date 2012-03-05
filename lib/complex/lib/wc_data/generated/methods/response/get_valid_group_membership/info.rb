module HealthVault
  module WCData
  module Methods
  module Response
  module GetValidGroupMembership
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Thing
        def add_thing(value)
          @children['thing'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Thing
        def remove_thing(value)
            @children['thing'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The valid Group Membership things.
#<b>returns</b>: a HealthVault::WCData::Thing::Thing Array
        def thing
          return @children['thing'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing'] = {:name => 'thing', :class => HealthVault::WCData::Thing::Thing, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

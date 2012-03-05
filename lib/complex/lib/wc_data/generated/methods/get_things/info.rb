module HealthVault
  module WCData
  module Methods
  module GetThings
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings::ThingRequestGroup
        def add_group(value)
          @children['group'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::GetThings::ThingRequestGroup
        def remove_group(value)
            @children['group'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Specifies the thing/things to be retrieved.
#<b>returns</b>: a HealthVault::WCData::Methods::GetThings::ThingRequestGroup Array
        def group
          return @children['group'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['group'] = {:name => 'group', :class => HealthVault::WCData::Methods::GetThings::ThingRequestGroup, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

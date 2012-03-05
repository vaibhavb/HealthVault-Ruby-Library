module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::ThingTypeInfo
        def add_thing_type(value)
          @children['thing-type'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetThingType::ThingTypeInfo
        def remove_thing_type(value)
            @children['thing-type'][:value].delete(value)
        end
        
        
        #<b>summary</b>: List of one or more thing types that satisfies the request.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::ThingTypeInfo Array
        def thing_type
          return @children['thing-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing-type'] = {:name => 'thing-type', :class => HealthVault::WCData::Methods::Response::GetThingType::ThingTypeInfo, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class Columns < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::Column
        def add_column(value)
          @children['column'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetThingType::Column
        def remove_column(value)
            @children['column'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::Column Array
        def column
          return @children['column'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'columns'
        
          
          @children['column'] = {:name => 'column', :class => HealthVault::WCData::Methods::Response::GetThingType::Column, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

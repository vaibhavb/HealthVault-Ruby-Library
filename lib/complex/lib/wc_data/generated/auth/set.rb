module HealthVault
  module WCData
  module Auth
  
      class Set < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::DateRange
        def add_date_range(value)
          @children['date-range'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::DateRange
        def remove_date_range(value)
            @children['date-range'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Types::DateRange Array
        def date_range
          return @children['date-range'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_type_id(value)
          @children['type-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_type_id(value)
            @children['type-id'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def type_id
          return @children['type-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'set'
        
          
          @children['date-range'] = {:name => 'date-range', :class => HealthVault::WCData::Types::DateRange, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['type-id'] = {:name => 'type-id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

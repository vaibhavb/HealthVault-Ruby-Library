module HealthVault
  module WCData
  module Types
  
      class CultureSpecificExtensionItem < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def name
          return @children['name'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString
        def add_value(value)
          @children['value'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString
        def remove_value(value)
            @children['value'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString Array
        def value
          return @children['value'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'culturespecificextensionitem'
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['value'] = {:name => 'value', :class => HealthVault::WCData::Types::CultureSpecificString, :value => Array.new, :min => 1, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end



module HealthVault
  module WCData
  module Types
  
      class Codedvalue < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def value=(value)
          @children['value'][:value] = value
        end
        
        #<b>returns</b>: a String
        def value
          return @children['value'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def family=(value)
          @children['family'][:value] = value
        end
        
        #<b>returns</b>: a String
        def family
          return @children['family'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def type=(value)
          @children['type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def type
          return @children['type'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version
          return @children['version'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'coded-value'
        
          
          @children['value'] = {:name => 'value', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['value'][:value] = String.new
            
          
        
          
          @children['family'] = {:name => 'family', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['type'] = {:name => 'type', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['type'][:value] = String.new
            
          
        
          
          @children['version'] = {:name => 'version', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class Transforms < ComplexType
        
     
       
        #<em>value</em> is a String
        def add_tag(value)
          @children['tag'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_tag(value)
            @children['tag'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a String Array
        def tag
          return @children['tag'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'transforms'
        
          
          @children['tag'] = {:name => 'tag', :class => String, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

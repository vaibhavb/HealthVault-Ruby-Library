module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class Column < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def tag=(value)
          @children['tag'][:value] = value
        end
        
        #<b>returns</b>: a String
        def tag
          return @children['tag'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def label=(value)
          @children['label'][:value] = value
        end
        
        #<b>returns</b>: a String
        def label
          return @children['label'][:value]
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
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def width=(value)
          @children['width'][:value] = value
        end
        
        #<b>returns</b>: a String
        def width
          return @children['width'][:value]
        end
       
     
       
        
        #<b>summary</b>: The default visibility of the column.
#<b>remarks</b>: If true, the column should be shown by default. If false, the column may be shown with some user interaction.
#<em>value</em> is a String
        def visible=(value)
          @children['visible'][:value] = value
        end
        
        #<b>returns</b>: a String
        def visible
          return @children['visible'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'column'
        
          
          @children['tag'] = {:name => 'tag', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['tag'][:value] = String.new
            
          
        
          
          @children['label'] = {:name => 'label', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['label'][:value] = String.new
            
          
        
          
          @children['type'] = {:name => 'type', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['type'][:value] = String.new
            
          
        
          
          @children['width'] = {:name => 'width', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['width'][:value] = String.new
            
          
        
          
          @children['visible'] = {:name => 'visible', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end



module HealthVault
  module WCData
  module Types
  
      class Phone < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def description=(value)
          @children['description'][:value] = value
        end
        
        #<b>returns</b>: a String
        def description
          return @children['description'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_primary=(value)
          @children['is-primary'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_primary
          return @children['is-primary'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def number=(value)
          @children['number'][:value] = value
        end
        
        #<b>returns</b>: a String
        def number
          return @children['number'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'phone'
        
          
          @children['description'] = {:name => 'description', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['is-primary'] = {:name => 'is-primary', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['number'] = {:name => 'number', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['number'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

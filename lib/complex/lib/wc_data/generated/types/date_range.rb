module HealthVault
  module WCData
  module Types
  
      class DateRange < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def date_min=(value)
          @children['date-min'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_min
          return @children['date-min'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def date_max=(value)
          @children['date-max'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_max
          return @children['date-max'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'daterange'
        
          
          @children['date-min'] = {:name => 'date-min', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-max'] = {:name => 'date-max', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

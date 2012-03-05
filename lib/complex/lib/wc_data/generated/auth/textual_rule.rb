module HealthVault
  module WCData
  module Auth
  
      class TextualRule < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def permission=(value)
          @children['permission'][:value] = value
        end
        
        #<b>returns</b>: a String
        def permission
          return @children['permission'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def target_thing_types=(value)
          @children['target-thing-types'][:value] = value
        end
        
        #<b>returns</b>: a String
        def target_thing_types
          return @children['target-thing-types'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def target_sets=(value)
          @children['target-sets'][:value] = value
        end
        
        #<b>returns</b>: a String
        def target_sets
          return @children['target-sets'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def target_dates=(value)
          @children['target-dates'][:value] = value
        end
        
        #<b>returns</b>: a String
        def target_dates
          return @children['target-dates'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def except_thing_types=(value)
          @children['except-thing-types'][:value] = value
        end
        
        #<b>returns</b>: a String
        def except_thing_types
          return @children['except-thing-types'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def except_sets=(value)
          @children['except-sets'][:value] = value
        end
        
        #<b>returns</b>: a String
        def except_sets
          return @children['except-sets'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def except_dates=(value)
          @children['except-dates'][:value] = value
        end
        
        #<b>returns</b>: a String
        def except_dates
          return @children['except-dates'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'textualrule'
        
          
          @children['permission'] = {:name => 'permission', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['permission'][:value] = String.new
            
          
        
          
          @children['target-thing-types'] = {:name => 'target-thing-types', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['target-sets'] = {:name => 'target-sets', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['target-dates'] = {:name => 'target-dates', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['except-thing-types'] = {:name => 'except-thing-types', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['except-sets'] = {:name => 'except-sets', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['except-dates'] = {:name => 'except-dates', :class => String, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

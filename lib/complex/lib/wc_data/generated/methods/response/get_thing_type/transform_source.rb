module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class TransformSource < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a String
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The identifying tag for the transform.
#<b>remarks</b>: The tag identifies the transform source for the specific thing type.
#<em>value</em> is a String
        def tag=(value)
          @children['tag'][:value] = value
        end
        
        #<b>returns</b>: a String
        def tag
          return @children['tag'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'transformsource'
        
          
          @children['data'] = {:name => 'data', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = String.new
            
          
        
          
          @children['tag'] = {:name => 'tag', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['tag'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

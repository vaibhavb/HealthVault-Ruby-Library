module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class ShellRedirectToken < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def token=(value)
          @children['token'][:value] = value
        end
        
        #<b>returns</b>: a String
        def token
          return @children['token'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def description=(value)
          @children['description'][:value] = value
        end
        
        #<b>returns</b>: a String
        def description
          return @children['description'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def querystring_parameters=(value)
          @children['querystring-parameters'][:value] = value
        end
        
        #<b>returns</b>: a String
        def querystring_parameters
          return @children['querystring-parameters'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'shellredirecttoken'
        
          
          @children['token'] = {:name => 'token', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['token'][:value] = String.new
            
          
        
          
          @children['description'] = {:name => 'description', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['description'][:value] = String.new
            
          
        
          
          @children['querystring-parameters'] = {:name => 'querystring-parameters', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['querystring-parameters'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

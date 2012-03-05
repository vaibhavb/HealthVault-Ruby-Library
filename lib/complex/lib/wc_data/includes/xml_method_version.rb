module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class XmlMethodVersion < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def request_schema_url=(value)
          @children['request-schema-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def request_schema_url
          return @children['request-schema-url'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def response_schema_url=(value)
          @children['response-schema-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def response_schema_url
          return @children['response-schema-url'][:value]
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
          self.tag_name = 'xmlmethodversion'
        
          
          @children['request-schema-url'] = {:name => 'request-schema-url', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['response-schema-url'] = {:name => 'response-schema-url', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['number'] = {:name => 'number', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['number'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class XmlMethodVersion < ComplexType
        
     
       
        
        #<b>summary</b>: The URL of the method request schema.
#<b>remarks</b>: The URL points to an .xsd file defining the schema for a request to this method.
#<em>value</em> is a String
        def request_schema_url=(value)
          @children['request-schema-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def request_schema_url
          return @children['request-schema-url'][:value]
        end
       
     
       
        
        #<b>summary</b>: The URL of the method response schema.
#<b>remarks</b>: The URL points to an .xsd file defining the schema for a response from this method.
#<em>value</em> is a String
        def response_schema_url=(value)
          @children['response-schema-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def response_schema_url
          return @children['response-schema-url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The version number of the method.
#<b>remarks</b>: The version number for a Microsoft HealthVault web-method is a sequencially increasing number starting at one. Breaking changes to a method will increment the version number for the method but old versions of a method are still available to handle requests. The method request must contain the appropriate method version number for the XML schema that it is sending.
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

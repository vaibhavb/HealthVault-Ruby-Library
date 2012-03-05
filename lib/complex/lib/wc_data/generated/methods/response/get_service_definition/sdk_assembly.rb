module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class SDKAssembly < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The URL of the Microsoft HealthVault .NET assembly for download.
#<em>value</em> is a String
        def url=(value)
          @children['url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def url
          return @children['url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The version number for the Microsoft HealthVault .NET assembly.
#<em>value</em> is a String
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version
          return @children['version'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The URL of the documentation for the Microsoft HealthVault .NET assembly.
#<b>remarks</b>: The URL of the online reference documentation for the Microsoft HealthVault .NET APIs.
#<em>value</em> is a String
        def doc_url=(value)
          @children['doc-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def doc_url
          return @children['doc-url'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'sdkassembly'
        
          
          @children['url'] = {:name => 'url', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['url'][:value] = String.new
            
          
        
          
          @children['version'] = {:name => 'version', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['version'][:value] = String.new
            
          
        
          
          @children['doc-url'] = {:name => 'doc-url', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['doc-url'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Information about Microsoft HealthVault.
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::Platform
        def platform=(value)
          @children['platform'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::Platform
        def platform
          return @children['platform'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Information about the Microsoft HealthVault Shell.
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::Shell
        def shell=(value)
          @children['shell'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::Shell
        def shell
          return @children['shell'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::SDKAssembly
        def add_sdk_assembly(value)
          @children['sdk-assembly'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetServiceDefinition::SDKAssembly
        def remove_sdk_assembly(value)
            @children['sdk-assembly'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Information about the Microsoft HealthVault .NET software development kit.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::SDKAssembly Array
        def sdk_assembly
          return @children['sdk-assembly'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethod
        def add_xml_method(value)
          @children['xml-method'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethod
        def remove_xml_method(value)
            @children['xml-method'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Information about the Microsoft HealthVault web methods.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethod Array
        def xml_method
          return @children['xml-method'][:value]
        end
       
     
       
        #<em>value</em> is a String
        def add_common_schema(value)
          @children['common-schema'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_common_schema(value)
            @children['common-schema'][:value].delete(value)
        end
        
        
        #<b>summary</b>: URLs of schemas referenced by the Microsoft HealthVault web service methods.
#<b>returns</b>: a String Array
        def common_schema
          return @children['common-schema'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['platform'] = {:name => 'platform', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::Platform, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['platform'][:value] = HealthVault::WCData::Methods::Response::GetServiceDefinition::Platform.new
            
          
        
          
          @children['shell'] = {:name => 'shell', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::Shell, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['shell'][:value] = HealthVault::WCData::Methods::Response::GetServiceDefinition::Shell.new
            
          
        
          
          @children['sdk-assembly'] = {:name => 'sdk-assembly', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::SDKAssembly, :value => Array.new, :min => 1, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['xml-method'] = {:name => 'xml-method', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethod, :value => Array.new, :min => 1, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['common-schema'] = {:name => 'common-schema', :class => String, :value => Array.new, :min => 0, :max => 999999, :order => 5, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

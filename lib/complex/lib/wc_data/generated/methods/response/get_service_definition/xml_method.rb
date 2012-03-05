module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class XmlMethod < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of the Microsoft HealthVault method.
#<b>remarks</b>: The name is used in the XML request to define the method the request is calling.
#<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethodVersion
        def add_version(value)
          @children['version'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethodVersion
        def remove_version(value)
            @children['version'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The set of available versions of the method.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethodVersion Array
        def version
          return @children['version'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'xmlmethod'
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['name'][:value] = String.new
            
          
        
          
          @children['version'] = {:name => 'version', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::XmlMethodVersion, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

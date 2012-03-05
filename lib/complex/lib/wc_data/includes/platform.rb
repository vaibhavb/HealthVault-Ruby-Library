module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class Platform < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def url=(value)
          @children['url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def url
          return @children['url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version
          return @children['version'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::ConfigurationEntry
        def add_configuration(value)
          @children['configuration'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetServiceDefinition::ConfigurationEntry
        def remove_configuration(value)
            @children['configuration'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::ConfigurationEntry Array
        def configuration
          return @children['configuration'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'platform'
        
          
          @children['url'] = {:name => 'url', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['url'][:value] = String.new
            
          
        
          
          @children['version'] = {:name => 'version', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['version'][:value] = String.new
            
          
        
          
          @children['configuration'] = {:name => 'configuration', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::ConfigurationEntry, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

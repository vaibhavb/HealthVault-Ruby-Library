module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition2
  
      class Platform < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The URL to use to access the Microsoft HealthVault web service methods.
#<b>remarks</b>: Microsoft HealthVault method requests must go through this URL.
#<em>value</em> is a String
        def url=(value)
          @children['url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def url
          return @children['url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The Microsoft HealthVault version number.
#<b>remarks</b>: This version number will follow the general .NET guidlines for versioning of assemblies: major.minor.build.revision. Changes to the major version number signify breaking changes. Changes to other parts of the version signify added or updates to functionality.
#<em>value</em> is a String
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version
          return @children['version'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition2::ConfigurationEntry
        def add_configuration(value)
          @children['configuration'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetServiceDefinition2::ConfigurationEntry
        def remove_configuration(value)
            @children['configuration'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Configuration values that are important for developers to know about Microsoft HealthVault.
#<b>remarks</b>: Microsoft HealthVault has some configuration that dictates the behavior of certain methods and data. For instance, GetThings will return only a certain number of full things in the response and give only thing keys for anything beyond that limit. The number of full things returned is defined by configuration and can be changed at any time to optimize the services ability to respond to applications. These configuration values are surfaced here so that application developers can make programmatic decisions based on these values if necessary.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition2::ConfigurationEntry Array
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
            
          
        
          
          @children['configuration'] = {:name => 'configuration', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition2::ConfigurationEntry, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetApplicationSettings
  
      class AppSettings < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::ComplexType
        def add_anything(value)
          @children['anything'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::ComplexType
        def remove_anything(value)
            @children['anything'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The application settings.
#<b>remarks</b>: An application can put any data in this portion of settings. Microsoft HealthVault does not interpret this data in any way and will return it to the application exactly as it was stored. HealthVault does verify that the outer node containing the data is valid XML so some characters may need to be escaped or encoded.
#<b>returns</b>: a HealthVault::WCData::ComplexType Array
        def anything
          return @children['anything'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appsettings'
        
          
          @children['anything'] = {:name => 'anything', :class => HealthVault::WCData::ComplexType, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :extension, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

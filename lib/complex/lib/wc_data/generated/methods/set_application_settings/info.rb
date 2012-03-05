module HealthVault
  module WCData
  module Methods
  module SetApplicationSettings
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: The application specific settings for the person.
#<b>remarks</b>: An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called but can also be retrieved through the use of GetApplicationSettings.
#<em>value</em> is a HealthVault::WCData::Methods::SetApplicationSettings::AppSettings
        def app_settings=(value)
          @children['app-settings'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::SetApplicationSettings::AppSettings
        def app_settings
          return @children['app-settings'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['app-settings'] = {:name => 'app-settings', :class => HealthVault::WCData::Methods::SetApplicationSettings::AppSettings, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

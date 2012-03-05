module HealthVault
  module WCData
  module Methods
  module Response
  module GetApplicationSettings
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: The application specific settings for the person.
#<b>remarks</b>: An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called but can also be retrieved through the use of GetApplicationSettings.
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetApplicationSettings::AppSettings
        def app_settings=(value)
          @children['app-settings'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetApplicationSettings::AppSettings
        def app_settings
          return @children['app-settings'][:value]
        end
       
     
       
        
        #<b>summary</b>: The unique identifier for the health record that the person chose to use for this application.
#<b>remarks</b>: Most Microsoft HealthVault applications will work with single health record at a time.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def selected_record_id=(value)
          @children['selected-record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def selected_record_id
          return @children['selected-record-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['app-settings'] = {:name => 'app-settings', :class => HealthVault::WCData::Methods::Response::GetApplicationSettings::AppSettings, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['selected-record-id'] = {:name => 'selected-record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

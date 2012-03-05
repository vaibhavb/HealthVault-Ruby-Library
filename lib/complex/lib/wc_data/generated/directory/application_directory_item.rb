module HealthVault
  module WCData
  module Directory
  
      class ApplicationDirectoryItem < ComplexType
        
     
       
        
        #<b>summary</b>: Indicates whether the application is popular.
#<em>value</em> is a String
        def is_popular=(value)
          @children['is-popular'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_popular
          return @children['is-popular'][:value]
        end
       
     
       
        
        #<b>summary</b>: Large logo of the application.
#<em>value</em> is a HealthVault::WCData::Application::AppLargeLogoInfo
        def application_logo=(value)
          @children['application-logo'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppLargeLogoInfo
        def application_logo
          return @children['application-logo'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificUrl
        def add_privacy_statement_url(value)
          @children['privacy-statement-url'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificUrl
        def remove_privacy_statement_url(value)
            @children['privacy-statement-url'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Url to the privacy statement for the application.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificUrl Array
        def privacy_statement_url
          return @children['privacy-statement-url'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificUrl
        def add_terms_of_use_url(value)
          @children['terms-of-use-url'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificUrl
        def remove_terms_of_use_url(value)
            @children['terms-of-use-url'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Url to the terms of use statement for the application.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificUrl Array
        def terms_of_use_url
          return @children['terms-of-use-url'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString
        def add_connection_description(value)
          @children['connection-description'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString
        def remove_connection_description(value)
            @children['connection-description'][:value].delete(value)
        end
        
        
        #<b>summary</b>: A description of an application and its connection process.
#<b>remark</b>: This description is displayed to the consumer to describe the type data (prescription, labs, etc) that this connection will bring into the record. It also describes the way the connection is made between HealthVault and the application. Connection-descriptions for all applications should be written in a consistent tone and style.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString Array
        def connection_description
          return @children['connection-description'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Directory::Screenshots
        def screenshots=(value)
          @children['screenshots'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::Screenshots
        def screenshots
          return @children['screenshots'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'applicationdirectoryitem'
        
          
          @children['is-popular'] = {:name => 'is-popular', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['application-logo'] = {:name => 'application-logo', :class => HealthVault::WCData::Application::AppLargeLogoInfo, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['privacy-statement-url'] = {:name => 'privacy-statement-url', :class => HealthVault::WCData::Types::CultureSpecificUrl, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['terms-of-use-url'] = {:name => 'terms-of-use-url', :class => HealthVault::WCData::Types::CultureSpecificUrl, :value => Array.new, :min => 0, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['connection-description'] = {:name => 'connection-description', :class => HealthVault::WCData::Types::CultureSpecificString, :value => Array.new, :min => 0, :max => 999999, :order => 5, :place => :element, :choice => 0 }
          
        
          
          @children['screenshots'] = {:name => 'screenshots', :class => HealthVault::WCData::Directory::Screenshots, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Directory
  
      class DeviceModel < ComplexType
        
     
       
        
        #<em>value</em> is a HealthVault::WCData::Directory::Screenshots
        def screenshots=(value)
          @children['screenshots'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::Screenshots
        def screenshots
          return @children['screenshots'][:value]
        end
       
     
       
        
        #<b>summmary</b>: Model name.
#<em>value</em> is a HealthVault::WCData::Types::Stringz128
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz128
        def name
          return @children['name'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255nw
        def add_display_name(value)
          @children['display-name'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString255nw
        def remove_display_name(value)
            @children['display-name'][:value].delete(value)
        end
        
        
        #<b>summmary</b>: Device model's friendly name.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255nw Array
        def display_name
          return @children['display-name'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificUrl
        def add_purchase_url(value)
          @children['purchase-url'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificUrl
        def remove_purchase_url(value)
            @children['purchase-url'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Driver package download url.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificUrl Array
        def purchase_url
          return @children['purchase-url'][:value]
        end
       
     
       
        
        #<b>summary</b>: Information about device that is compatible with HealthVault windows client.
#<em>value</em> is a HealthVault::WCData::Directory::WindowsClientInformation
        def windows_client_information=(value)
          @children['windows-client-information'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::WindowsClientInformation
        def windows_client_information
          return @children['windows-client-information'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'devicemodel'
        
          
          @children['screenshots'] = {:name => 'screenshots', :class => HealthVault::WCData::Directory::Screenshots, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::Stringz128, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['display-name'] = {:name => 'display-name', :class => HealthVault::WCData::Types::CultureSpecificString255nw, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['purchase-url'] = {:name => 'purchase-url', :class => HealthVault::WCData::Types::CultureSpecificUrl, :value => Array.new, :min => 0, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['windows-client-information'] = {:name => 'windows-client-information', :class => HealthVault::WCData::Directory::WindowsClientInformation, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

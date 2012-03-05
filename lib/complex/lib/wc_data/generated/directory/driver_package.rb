module HealthVault
  module WCData
  module Directory
  
      class DriverPackage < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summmary</b>: Platforms supported by the driver. This is a coded-value.
#<em>value</em> is a HealthVault::WCData::Directory::Platforms
        def platforms=(value)
          @children['platforms'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::Platforms
        def platforms
          return @children['platforms'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificUrl
        def add_driver_package_url(value)
          @children['driver-package-url'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificUrl
        def remove_driver_package_url(value)
            @children['driver-package-url'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Driver package download url.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificUrl Array
        def driver_package_url
          return @children['driver-package-url'][:value]
        end
       
     
       
        
        #<b>summary</b>: Default arguments to pass to the driver install package. Recommended maximum-length of default-arguments is 2048 characters.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def default_arguments=(value)
          @children['default-arguments'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def default_arguments
          return @children['default-arguments'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificUrl
        def add_instructions_url(value)
          @children['instructions-url'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificUrl
        def remove_instructions_url(value)
            @children['instructions-url'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Special instructions url.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificUrl Array
        def instructions_url
          return @children['instructions-url'][:value]
        end
       
     
       
        
        #<b>summary</b>: Signer name of the package (digital signature signer name).
#<em>value</em> is a HealthVault::WCData::Types::String255nw
        def validation_code=(value)
          @children['validation-code'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255nw
        def validation_code
          return @children['validation-code'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'driverpackage'
        
          
          @children['platforms'] = {:name => 'platforms', :class => HealthVault::WCData::Directory::Platforms, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['platforms'][:value] = HealthVault::WCData::Directory::Platforms.new
            
          
        
          
          @children['driver-package-url'] = {:name => 'driver-package-url', :class => HealthVault::WCData::Types::CultureSpecificUrl, :value => Array.new, :min => 1, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['default-arguments'] = {:name => 'default-arguments', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['instructions-url'] = {:name => 'instructions-url', :class => HealthVault::WCData::Types::CultureSpecificUrl, :value => Array.new, :min => 0, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['validation-code'] = {:name => 'validation-code', :class => HealthVault::WCData::Types::String255nw, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

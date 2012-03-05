module HealthVault
  module WCData
  module Directory
  
      class WindowsClientInformation < ComplexType
        
     
       
        
        #<b>summary</b>: The device class guid.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def device_class=(value)
          @children['device-class'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def device_class
          return @children['device-class'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The hardware id. Recommended maximum-length of hardware-id is 32 characters.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def hardware_id=(value)
          @children['hardware-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def hardware_id
          return @children['hardware-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The list of installed hardware ids.
#<em>value</em> is a HealthVault::WCData::Directory::InstalledHardwareIds
        def installed_hardware_ids=(value)
          @children['installed-hardware-ids'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::InstalledHardwareIds
        def installed_hardware_ids
          return @children['installed-hardware-ids'][:value]
        end
       
     
       
        
        #<b>summary</b>: Identification for auto-detect. Recommended maximum-length of auto-detect-id is 32 characters.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def auto_detect_id=(value)
          @children['auto-detect-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def auto_detect_id
          return @children['auto-detect-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: Arguments to pass to the driver install package. Recommended limit on driver-package-arguments is 2048 characters.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def driver_package_arguments=(value)
          @children['driver-package-arguments'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def driver_package_arguments
          return @children['driver-package-arguments'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Driver packages for this device.
#<em>value</em> is a HealthVault::WCData::Directory::DriverPackages
        def driver_packages=(value)
          @children['driver-packages'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::DriverPackages
        def driver_packages
          return @children['driver-packages'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'windowsclientinformation'
        
          
          @children['device-class'] = {:name => 'device-class', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['hardware-id'] = {:name => 'hardware-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['hardware-id'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['installed-hardware-ids'] = {:name => 'installed-hardware-ids', :class => HealthVault::WCData::Directory::InstalledHardwareIds, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['installed-hardware-ids'][:value] = HealthVault::WCData::Directory::InstalledHardwareIds.new
            
          
        
          
          @children['auto-detect-id'] = {:name => 'auto-detect-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['driver-package-arguments'] = {:name => 'driver-package-arguments', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['driver-packages'] = {:name => 'driver-packages', :class => HealthVault::WCData::Directory::DriverPackages, :value => nil, :min => 1, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          @children['driver-packages'][:value] = HealthVault::WCData::Directory::DriverPackages.new
            
          
        
        end
      end
  end
  
  end
end

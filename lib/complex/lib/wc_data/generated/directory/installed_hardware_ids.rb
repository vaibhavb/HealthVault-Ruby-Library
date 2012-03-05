module HealthVault
  module WCData
  module Directory
  
      class InstalledHardwareIds < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::String1024
        def add_installed_hardware_id(value)
          @children['installed-hardware-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::String1024
        def remove_installed_hardware_id(value)
            @children['installed-hardware-id'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The installed hardware ids.
#<b>returns</b>: a HealthVault::WCData::Types::String1024 Array
        def installed_hardware_id
          return @children['installed-hardware-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'installedhardwareids'
        
          
          @children['installed-hardware-id'] = {:name => 'installed-hardware-id', :class => HealthVault::WCData::Types::String1024, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

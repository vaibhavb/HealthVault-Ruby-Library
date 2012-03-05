module HealthVault
  module WCData
  module Directory
  
      class DeviceDirectoryItem < ComplexType
        
     
       
        
        #<b>summary</b>: Model information for this device.
#<em>value</em> is a HealthVault::WCData::Directory::DeviceModels
        def models=(value)
          @children['models'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::DeviceModels
        def models
          return @children['models'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'devicedirectoryitem'
        
          
          @children['models'] = {:name => 'models', :class => HealthVault::WCData::Directory::DeviceModels, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

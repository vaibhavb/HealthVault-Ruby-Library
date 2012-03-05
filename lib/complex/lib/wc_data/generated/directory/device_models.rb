module HealthVault
  module WCData
  module Directory
  
      class DeviceModels < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Directory::DeviceModel
        def add_model(value)
          @children['model'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Directory::DeviceModel
        def remove_model(value)
            @children['model'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Model information.
#<b>returns</b>: a HealthVault::WCData::Directory::DeviceModel Array
        def model
          return @children['model'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'devicemodels'
        
          
          @children['model'] = {:name => 'model', :class => HealthVault::WCData::Directory::DeviceModel, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

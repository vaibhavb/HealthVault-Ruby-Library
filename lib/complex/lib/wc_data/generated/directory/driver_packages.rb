module HealthVault
  module WCData
  module Directory
  
      class DriverPackages < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Directory::DriverPackage
        def add_package(value)
          @children['package'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Directory::DriverPackage
        def remove_package(value)
            @children['package'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Directory::DriverPackage Array
        def package
          return @children['package'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'driverpackages'
        
          
          @children['package'] = {:name => 'package', :class => HealthVault::WCData::Directory::DriverPackage, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

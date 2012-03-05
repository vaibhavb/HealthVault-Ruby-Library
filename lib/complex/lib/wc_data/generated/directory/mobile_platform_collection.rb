module HealthVault
  module WCData
  module Directory
  
      class MobilePlatformCollection < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Directory::MobilePlatform
        def add_mobile_platform(value)
          @children['mobile-platform'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Directory::MobilePlatform
        def remove_mobile_platform(value)
            @children['mobile-platform'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Directory::MobilePlatform Array
        def mobile_platform
          return @children['mobile-platform'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'mobileplatformcollection'
        
          
          @children['mobile-platform'] = {:name => 'mobile-platform', :class => HealthVault::WCData::Directory::MobilePlatform, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

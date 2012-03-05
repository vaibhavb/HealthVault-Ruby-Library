module HealthVault
  module WCData
  module Directory
  
      class Platforms < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Codedvalue
        def add_platform(value)
          @children['platform'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Codedvalue
        def remove_platform(value)
            @children['platform'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summmary</b>: Platform supported by the driver.
#<b>returns</b>: a HealthVault::WCData::Types::Codedvalue Array
        def platform
          return @children['platform'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'platforms'
        
          
          @children['platform'] = {:name => 'platform', :class => HealthVault::WCData::Types::Codedvalue, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

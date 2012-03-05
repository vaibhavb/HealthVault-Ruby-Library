module HealthVault
  module WCData
  module Application
  
      class AppLargeLogoInfo < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Application::CultureSpecificAppLargeLogo
        def add_logo(value)
          @children['logo'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Application::CultureSpecificAppLargeLogo
        def remove_logo(value)
            @children['logo'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Application::CultureSpecificAppLargeLogo Array
        def logo
          return @children['logo'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def content_type=(value)
          @children['content-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def content_type
          return @children['content-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'applargelogoinfo'
        
          
          @children['logo'] = {:name => 'logo', :class => HealthVault::WCData::Application::CultureSpecificAppLargeLogo, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['content-type'] = {:name => 'content-type', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['content-type'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
        end
      end
  end
  
  end
end

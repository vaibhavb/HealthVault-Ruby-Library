module HealthVault
  module WCData
  module Methods
  module Response
  module GetApplicationInfo
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Configuration and installation values for the application.
#<b>remarks</b>: This element contains information about the installation and configuration of the application including logos, authorization rules, and descriptions.
#<em>value</em> is a HealthVault::WCData::Application::AppWithLogos
        def application=(value)
          @children['application'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppWithLogos
        def application
          return @children['application'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['application'] = {:name => 'application', :class => HealthVault::WCData::Application::AppWithLogos, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['application'][:value] = HealthVault::WCData::Application::AppWithLogos.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

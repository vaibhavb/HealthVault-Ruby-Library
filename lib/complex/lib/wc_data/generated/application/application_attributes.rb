module HealthVault
  module WCData
  module Application
  
      class ApplicationAttributes < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def add_app_attribute(value)
          @children['app-attribute'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Stringnz
        def remove_app_attribute(value)
            @children['app-attribute'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The application attributes.
#<b>remarks</b>: Multiple values can be specified by passing multiple instances of this element. Currently supported values: "hippa" Specifies that the application is covered by HIPAA. "clinicaltrial" Specifies that the application is related to a clinical trial and may need a disclosure. Additional supported values may be added in the future. Application code must ignore any unrecognized values to avoid breaking when values are added.
#<b>returns</b>: a HealthVault::WCData::Types::Stringnz Array
        def app_attribute
          return @children['app-attribute'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'applicationattributes'
        
          
          @children['app-attribute'] = {:name => 'app-attribute', :class => HealthVault::WCData::Types::Stringnz, :value => Array.new, :min => 1, :max => 20, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

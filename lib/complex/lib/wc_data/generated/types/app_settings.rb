module HealthVault
  module WCData
  module Types
  
      class AppSettings < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::ComplexType
        def add_anything(value)
          @children['anything'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::ComplexType
        def remove_anything(value)
            @children['anything'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Application specific XML.
#<b>remarks</b>: An application can provide any XML which defines settings for the application for a particular person.
#<b>returns</b>: a HealthVault::WCData::ComplexType Array
        def anything
          return @children['anything'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appsettings'
        
          
          @children['anything'] = {:name => 'anything', :class => HealthVault::WCData::ComplexType, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :extension, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

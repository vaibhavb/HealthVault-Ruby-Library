module HealthVault
  module WCData
  module Types
  
      class CultureSpecificExtensionItems < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificExtensionItem
        def add_extension_item(value)
          @children['extension-item'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificExtensionItem
        def remove_extension_item(value)
            @children['extension-item'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificExtensionItem Array
        def extension_item
          return @children['extension-item'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'culturespecificextensionitems'
        
          
          @children['extension-item'] = {:name => 'extension-item', :class => HealthVault::WCData::Types::CultureSpecificExtensionItem, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

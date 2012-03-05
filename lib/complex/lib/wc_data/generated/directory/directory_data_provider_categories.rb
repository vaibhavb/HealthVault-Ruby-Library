module HealthVault
  module WCData
  module Directory
  
      class DirectoryDataProviderCategories < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Codedvalue
        def add_data_provider_category(value)
          @children['data-provider-category'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Codedvalue
        def remove_data_provider_category(value)
            @children['data-provider-category'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Category for which the device or application directory item provides data. This should be a codable-value and have a recommended vocabulary.
#<b>returns</b>: a HealthVault::WCData::Types::Codedvalue Array
        def data_provider_category
          return @children['data-provider-category'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'directorydataprovidercategories'
        
          
          @children['data-provider-category'] = {:name => 'data-provider-category', :class => HealthVault::WCData::Types::Codedvalue, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

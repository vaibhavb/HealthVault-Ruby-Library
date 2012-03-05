module HealthVault
  module WCData
  module Directory
  
      class DirectoryCategories < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Codedvalue
        def add_category(value)
          @children['category'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Codedvalue
        def remove_category(value)
            @children['category'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Category of the device or application directory. This should be a codable-value and have a recommended vocabulary.
#<b>remarks</b>: Categories for application such as Consumer or Industry. Categories for devices such as Blood Pressure Monitors, Blood Glucose Monitors, Weight Scales, ..etc
#<b>returns</b>: a HealthVault::WCData::Types::Codedvalue Array
        def category
          return @children['category'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'directorycategories'
        
          
          @children['category'] = {:name => 'category', :class => HealthVault::WCData::Types::Codedvalue, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Directory
  
      class Screenshots < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Directory::Screenshot
        def add_screenshot(value)
          @children['screenshot'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Directory::Screenshot
        def remove_screenshot(value)
            @children['screenshot'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Represents information for screenshot of the directory item.
#<b>returns</b>: a HealthVault::WCData::Directory::Screenshot Array
        def screenshot
          return @children['screenshot'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'screenshots'
        
          
          @children['screenshot'] = {:name => 'screenshot', :class => HealthVault::WCData::Directory::Screenshot, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

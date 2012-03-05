module HealthVault
  module WCData
  module Directory
  
      class Screenshot < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255nw
        def add_alt_text(value)
          @children['alt-text'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString255nw
        def remove_alt_text(value)
            @children['alt-text'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The alt-text associated with the screenshot. Recommended maximum-length of alt-text is 255 characters.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255nw Array
        def alt_text
          return @children['alt-text'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255nw
        def add_caption(value)
          @children['caption'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString255nw
        def remove_caption(value)
            @children['caption'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The caption associated with the screenshot. Recommended maximum-length of caption is 255 characters.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255nw Array
        def caption
          return @children['caption'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The sequence associated with the screenshot.
#<em>value</em> is a String
        def sequence=(value)
          @children['sequence'][:value] = value
        end
        
        #<b>returns</b>: a String
        def sequence
          return @children['sequence'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Directory::CultureSpecificScreenshotImage
        def add_image(value)
          @children['image'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Directory::CultureSpecificScreenshotImage
        def remove_image(value)
            @children['image'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Base 64 encoded image string. Recommended maximum-length of 150K or image size 150px by 150px.
#<b>returns</b>: a HealthVault::WCData::Directory::CultureSpecificScreenshotImage Array
        def image
          return @children['image'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Content type of the image such as jpeg...etc
#<em>value</em> is a HealthVault::WCData::Types::String255nw
        def image_content_type=(value)
          @children['image-content-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255nw
        def image_content_type
          return @children['image-content-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'screenshot'
        
          
          @children['alt-text'] = {:name => 'alt-text', :class => HealthVault::WCData::Types::CultureSpecificString255nw, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['caption'] = {:name => 'caption', :class => HealthVault::WCData::Types::CultureSpecificString255nw, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['sequence'] = {:name => 'sequence', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['sequence'][:value] = String.new
            
          
        
          
          @children['image'] = {:name => 'image', :class => HealthVault::WCData::Directory::CultureSpecificScreenshotImage, :value => Array.new, :min => 1, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['image-content-type'] = {:name => 'image-content-type', :class => HealthVault::WCData::Types::String255nw, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['image-content-type'][:value] = HealthVault::WCData::Types::String255nw.new
            
          
        
        end
      end
  end
  
  end
end

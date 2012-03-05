module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class Image < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a String
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The mime type for the enclosed base64 encoded image.
#<em>value</em> is a String
        def mime_type=(value)
          @children['mime-type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def mime_type
          return @children['mime-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'image'
        
          
          @children['data'] = {:name => 'data', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = String.new
            
          
        
          
          @children['mime-type'] = {:name => 'mime-type', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['mime-type'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Thing
  
      class DataOther < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a String
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Stringz1024
        def content_type=(value)
          @children['content-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz1024
        def content_type
          return @children['content-type'][:value]
        end
       
     
       
        
        #<b>summary</b>: The encoding associated with the data in the other data section.
#<b>remarks</b>: The other data is returned as a base64 encoded string. If the data was posted in to the HealthVault platform with some other encoding it will be encoded using base64 encoding before it is sent out via this field. Base64 will be the final encoding applied on the data.
#<em>value</em> is a HealthVault::WCData::Types::Stringz1024
        def content_encoding=(value)
          @children['content-encoding'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz1024
        def content_encoding
          return @children['content-encoding'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'dataother'
        
          
          @children['data'] = {:name => 'data', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = String.new
            
          
        
          
          @children['content-type'] = {:name => 'content-type', :class => HealthVault::WCData::Types::Stringz1024, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['content-encoding'] = {:name => 'content-encoding', :class => HealthVault::WCData::Types::Stringz1024, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

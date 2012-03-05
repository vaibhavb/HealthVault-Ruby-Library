module HealthVault
  module WCData
  module Request
  
      class Xsl < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a String
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::String128
        def content_type=(value)
          @children['content-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128
        def content_type
          return @children['content-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'xsl'
        
          
          @children['data'] = {:name => 'data', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = String.new
            
          
        
          
          @children['content-type'] = {:name => 'content-type', :class => HealthVault::WCData::Types::String128, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

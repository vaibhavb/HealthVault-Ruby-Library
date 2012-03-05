module HealthVault
  module WCData
  module Methods
  module GetThings3
  
      class Blobformat < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings3::BlobFormatSpec
        def blob_format_spec=(value)
          @children['blob-format-spec'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::GetThings3::BlobFormatSpec
        def blob_format_spec
          return @children['blob-format-spec'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blob-format'
        
          
          @children['blob-format-spec'] = {:name => 'blob-format-spec', :class => HealthVault::WCData::Methods::GetThings3::BlobFormatSpec, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['blob-format-spec'][:value] = HealthVault::WCData::Methods::GetThings3::BlobFormatSpec.new
            
          
        
        end
      end
  end
  end
  
  end
end

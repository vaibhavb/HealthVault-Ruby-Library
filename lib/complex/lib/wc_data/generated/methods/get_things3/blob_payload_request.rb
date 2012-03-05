module HealthVault
  module WCData
  module Methods
  module GetThings3
  
      class BlobPayloadRequest < ComplexType
        
     
       
        
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings3::BlobFilters
        def blob_filters=(value)
          @children['blob-filters'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::GetThings3::BlobFilters
        def blob_filters
          return @children['blob-filters'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def blob_format=(value)
          @children['blob-format'][:value] = value
        end
        
        #<b>returns</b>: a String
        def blob_format
          return @children['blob-format'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobpayloadrequest'
        
          
          @children['blob-filters'] = {:name => 'blob-filters', :class => HealthVault::WCData::Methods::GetThings3::BlobFilters, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['blob-format'] = {:name => 'blob-format', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['blob-format'][:value] = String.new
            
          
        
        end
      end
  end
  end
  
  end
end

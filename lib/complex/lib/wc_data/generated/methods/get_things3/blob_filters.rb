module HealthVault
  module WCData
  module Methods
  module GetThings3
  
      class BlobFilters < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings3::BlobFilterSpec
        def add_blob_filter(value)
          @children['blob-filter'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::GetThings3::BlobFilterSpec
        def remove_blob_filter(value)
            @children['blob-filter'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Methods::GetThings3::BlobFilterSpec Array
        def blob_filter
          return @children['blob-filter'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobfilters'
        
          
          @children['blob-filter'] = {:name => 'blob-filter', :class => HealthVault::WCData::Methods::GetThings3::BlobFilterSpec, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

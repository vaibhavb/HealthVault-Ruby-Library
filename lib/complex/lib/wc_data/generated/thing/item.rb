module HealthVault
  module WCData
  module Thing
  
      class Item < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Thing::BlobInfo
        def blob_info=(value)
          @children['blob-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::BlobInfo
        def blob_info
          return @children['blob-info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'item'
        
          
          @children['blob-info'] = {:name => 'blob-info', :class => HealthVault::WCData::Thing::BlobInfo, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['blob-info'][:value] = HealthVault::WCData::Thing::BlobInfo.new
            
          
        
        end
      end
  end
  
  end
end

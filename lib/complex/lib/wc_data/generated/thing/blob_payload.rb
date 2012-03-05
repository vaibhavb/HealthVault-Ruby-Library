module HealthVault
  module WCData
  module Thing
  
      class BlobPayload < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::BlobPayloadItem
        def add_blob(value)
          @children['blob'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::BlobPayloadItem
        def remove_blob(value)
            @children['blob'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Thing::BlobPayloadItem Array
        def blob
          return @children['blob'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobpayload'
        
          
          @children['blob'] = {:name => 'blob', :class => HealthVault::WCData::Thing::BlobPayloadItem, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

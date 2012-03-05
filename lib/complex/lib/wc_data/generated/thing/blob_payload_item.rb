module HealthVault
  module WCData
  module Thing
  
      class BlobPayloadItem < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Thing::BlobInfo
        def blob_info=(value)
          @children['blob-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::BlobInfo
        def blob_info
          return @children['blob-info'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def content_length=(value)
          @children['content-length'][:value] = value
        end
        
        #<b>returns</b>: a String
        def content_length
          return @children['content-length'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def base64data=(value)
          @children['base64data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def base64data
          return @children['base64data'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def blob_ref_url=(value)
          @children['blob-ref-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def blob_ref_url
          return @children['blob-ref-url'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies the content encoding of the BLOB when it was originally created.
#<b>remarks</b>: This element indicates the content encoding of the BLOB as specified when the BLOB was created. This element is provided for backward compatibility. For newly created BLOBs, the content encoding cannot be specified.
#<em>value</em> is a HealthVault::WCData::Types::Stringz1024
        def legacy_content_encoding=(value)
          @children['legacy-content-encoding'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz1024
        def legacy_content_encoding
          return @children['legacy-content-encoding'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies the current content encoding of the BLOB.
#<b>remarks</b>: The current content encoding indicates the current encoding of the raw bytes of the BLOB. It's useful for backward compatability purposes to indicate if the raw bytes are encoded or not. Newly created BLOBs will not have any encoding on the raw bytes. If the raw bytes are encoded, this element specifies the same encoding string as specified by the legacy-content-encoding element. If the bytes are not encoded, this element is not present.
#<em>value</em> is a HealthVault::WCData::Types::Stringz1024
        def current_content_encoding=(value)
          @children['current-content-encoding'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz1024
        def current_content_encoding
          return @children['current-content-encoding'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobpayloaditem'
        
          
          @children['blob-info'] = {:name => 'blob-info', :class => HealthVault::WCData::Thing::BlobInfo, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['blob-info'][:value] = HealthVault::WCData::Thing::BlobInfo.new
            
          
        
          
          @children['content-length'] = {:name => 'content-length', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['base64data'] = {:name => 'base64data', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 465792357 }
            
          
        
          
          @children['blob-ref-url'] = {:name => 'blob-ref-url', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 465792357 }
            
          
        
          
          @children['legacy-content-encoding'] = {:name => 'legacy-content-encoding', :class => HealthVault::WCData::Types::Stringz1024, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['current-content-encoding'] = {:name => 'current-content-encoding', :class => HealthVault::WCData::Types::Stringz1024, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

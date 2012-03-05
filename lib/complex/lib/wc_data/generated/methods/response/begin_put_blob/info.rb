module HealthVault
  module WCData
  module Methods
  module Response
  module BeginPutBlob
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The authentication token to be supplied with a streaming put blob request.
#<b>remarks</b>: The token has a limited time-to-live. When the token expires, requests will fail with access denied.
#<em>value</em> is a String
        def blob_ref_url=(value)
          @children['blob-ref-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def blob_ref_url
          return @children['blob-ref-url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The chunk size in bytes to use with the streaming PUT API.
#<em>value</em> is a String
        def blob_chunk_size=(value)
          @children['blob-chunk-size'][:value] = value
        end
        
        #<b>returns</b>: a String
        def blob_chunk_size
          return @children['blob-chunk-size'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The maximum size in bytes that the blob can grow to.
#<em>value</em> is a String
        def max_blob_size=(value)
          @children['max-blob-size'][:value] = value
        end
        
        #<b>returns</b>: a String
        def max_blob_size
          return @children['max-blob-size'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringz255
        def blob_hash_algorithm=(value)
          @children['blob-hash-algorithm'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz255
        def blob_hash_algorithm
          return @children['blob-hash-algorithm'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::BlobHashAlgorithmParameters
        def blob_hash_parameters=(value)
          @children['blob-hash-parameters'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::BlobHashAlgorithmParameters
        def blob_hash_parameters
          return @children['blob-hash-parameters'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['blob-ref-url'] = {:name => 'blob-ref-url', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['blob-ref-url'][:value] = String.new
            
          
        
          
          @children['blob-chunk-size'] = {:name => 'blob-chunk-size', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['blob-chunk-size'][:value] = String.new
            
          
        
          
          @children['max-blob-size'] = {:name => 'max-blob-size', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['max-blob-size'][:value] = String.new
            
          
        
          
          @children['blob-hash-algorithm'] = {:name => 'blob-hash-algorithm', :class => HealthVault::WCData::Types::Stringz255, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['blob-hash-algorithm'][:value] = HealthVault::WCData::Types::Stringz255.new
            
          
        
          
          @children['blob-hash-parameters'] = {:name => 'blob-hash-parameters', :class => HealthVault::WCData::Types::BlobHashAlgorithmParameters, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['blob-hash-parameters'][:value] = HealthVault::WCData::Types::BlobHashAlgorithmParameters.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

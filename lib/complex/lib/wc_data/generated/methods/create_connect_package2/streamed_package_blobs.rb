module HealthVault
  module WCData
  module Methods
  module CreateConnectPackage2
  
      class StreamedPackageBlobs < ComplexType
        
     
       
        #<em>value</em> is a String
        def add_blob_in_package_ref_url(value)
          @children['blob-in-package-ref-url'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_blob_in_package_ref_url(value)
            @children['blob-in-package-ref-url'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Is a reference url to the blob, created via streaming and a part of the encrypted thing within the package.
#<b>remarks</b>: The blobs are streamed in by allocating urls through the BeginConnectPackageBlob call. This is followed by streaming the bytes in via the Binary channel API.
#<b>returns</b>: a String Array
        def blob_in_package_ref_url
          return @children['blob-in-package-ref-url'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'streamedpackageblobs'
        
          
          @children['blob-in-package-ref-url'] = {:name => 'blob-in-package-ref-url', :class => String, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

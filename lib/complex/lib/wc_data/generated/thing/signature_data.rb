module HealthVault
  module WCData
  module Thing
  
      class SignatureData < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Thing::HealthVaultThingSignatureMethod
        def hv_signature_method=(value)
          @children['hv-signature-method'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::HealthVaultThingSignatureMethod
        def hv_signature_method
          return @children['hv-signature-method'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::BlobSignatureInfo
        def blob_signature_info=(value)
          @children['blob-signature-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::BlobSignatureInfo
        def blob_signature_info
          return @children['blob-signature-info'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A string identifying the signing algorithm.
#<b>remarks</b>: This value must be: "rsa-sha1". This is a synonym for the signature method defined by: "http://www.w3.org/2000/09/xmldsig#rsa-sha1".
#<em>value</em> is a HealthVault::WCData::Types::Stringnznw
        def algorithm_tag=(value)
          @children['algorithm-tag'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnznw
        def algorithm_tag
          return @children['algorithm-tag'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'signaturedata'
        
          
          @children['hv-signature-method'] = {:name => 'hv-signature-method', :class => HealthVault::WCData::Thing::HealthVaultThingSignatureMethod, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['hv-signature-method'][:value] = HealthVault::WCData::Thing::HealthVaultThingSignatureMethod.new
            
          
        
          
          @children['blob-signature-info'] = {:name => 'blob-signature-info', :class => HealthVault::WCData::Thing::BlobSignatureInfo, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['algorithm-tag'] = {:name => 'algorithm-tag', :class => HealthVault::WCData::Types::Stringnznw, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['algorithm-tag'][:value] = HealthVault::WCData::Types::Stringnznw.new
            
          
        
        end
      end
  end
  
  end
end

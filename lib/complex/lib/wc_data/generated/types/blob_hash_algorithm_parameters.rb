module HealthVault
  module WCData
  module Types
  
      class BlobHashAlgorithmParameters < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def block_size=(value)
          @children['block-size'][:value] = value
        end
        
        #<b>returns</b>: a String
        def block_size
          return @children['block-size'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobhashalgorithmparameters'
        
          
          @children['block-size'] = {:name => 'block-size', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

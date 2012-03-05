module HealthVault
  module WCData
  module Methods
module GetThings3

      #BlobFormatSpec is a string
      class BlobFormatSpec < SimpleType
      
        
      
        
            
        def self.information
          return 'information'
        end
            
        def self.inline
          return 'inline'
        end
            
        def self.streamed
          return 'streamed'
        end
            
        def self.enum
          return ['information','inline','streamed']
        end        
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.enum.include?(value)
          
        
          return result
        end
      end
  end
  end
  
  end
end

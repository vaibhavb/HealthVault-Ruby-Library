
module HealthVault
  module WCData
  module Types

      #Base64Sha1 is a string
      class Base64Sha1 < SimpleType
      
        
      
        
        #minLength = 28
        def minLength(value)
        
          return value.length > 28
        
        end
        
      
        
        #maxLength = 28
        def maxLength(value)
        
          return value.length < 28
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minLength(value)
          
        
          
          result = result && self.maxLength(value)
          
        
          return result
        end
      end
  end
  
  end
end

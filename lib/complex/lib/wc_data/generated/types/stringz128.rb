module HealthVault
  module WCData
  module Types

      #Stringz128 is a string
      class Stringz128 < SimpleType
      
        
      
        
        #minLength = 0
        def minLength(value)
        
          return value.length > 0
        
        end
        
      
        
        #maxLength = 128
        def maxLength(value)
        
          return value.length < 128
        
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

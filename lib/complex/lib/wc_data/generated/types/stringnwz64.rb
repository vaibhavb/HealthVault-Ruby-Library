module HealthVault
  module WCData
  module Types

      #Stringnwz64 is a string
      class Stringnwz64 < SimpleType
      
        
      
        
        #minLength = 0
        def minLength(value)
        
          return value.length > 0
        
        end
        
      
        
        #maxLength = 64
        def maxLength(value)
        
          return value.length < 64
        
        end
        
      
        
        #pattern = (\s*[^\s]+\s*)+
        def pattern(value)
        
          return true
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minLength(value)
          
        
          
          result = result && self.maxLength(value)
          
        
          
          result = result && self.pattern(value)
          
        
          return result
        end
      end
  end
  
  end
end

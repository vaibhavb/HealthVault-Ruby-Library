module HealthVault
  module WCData
  module Types

      #Char2 is a string
      class Char2 < SimpleType
      
        
      
        
        #minLength = 2
        def minLength(value)
        
          return value.length > 2
        
        end
        
      
        
        #maxLength = 2
        def maxLength(value)
        
          return value.length < 2
        
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

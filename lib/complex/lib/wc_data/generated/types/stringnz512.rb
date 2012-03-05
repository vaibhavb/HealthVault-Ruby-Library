module HealthVault
  module WCData
  module Types

      #Stringnz512 is a this:stringnz
      class Stringnz512 < SimpleType
      
        
      
        
        #minLength = 1
        def minLength(value)
        
          return value.length > 1
        
        end
        
      
        
        #maxLength = 512
        def maxLength(value)
        
          return value.length < 512
        
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

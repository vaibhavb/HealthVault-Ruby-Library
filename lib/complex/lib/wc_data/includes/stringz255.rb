

module HealthVault
  module WCData
  module Types

      #Stringz255 is a string
      class Stringz255 < SimpleType
      
        
      
        
        #minLength = 0
        def minLength(value)
        
          return value.length > 0
        
        end
        
      
        
        #maxLength = 255
        def maxLength(value)
        
          return value.length < 255
        
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

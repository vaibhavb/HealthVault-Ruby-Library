module HealthVault
  module WCData
  module Types

      #Version is a string
      class Version < SimpleType
      
        
      
        
        #minLength = 7
        def minLength(value)
        
          return value.length > 7
        
        end
        
      
        
        #maxLength = 19
        def maxLength(value)
        
          return value.length < 19
        
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

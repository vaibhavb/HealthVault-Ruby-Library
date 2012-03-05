module HealthVault
  module WCData
  module Types

      #LoginName is a string
      class LoginName < SimpleType
      
        
      
        
        #minLength = 6
        def minLength(value)
        
          return value.length > 6
        
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

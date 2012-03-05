module HealthVault
  module WCData
  module Application

      #AppLargeLogo is a base64Binary
      class AppLargeLogo < SimpleType
      
        
      
        
        #minLength = 3
        def minLength(value)
        
          return value.length > 3
        
        end
        
      
        
        #maxLength = 163840
        def maxLength(value)
        
          return value.length < 163840
        
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

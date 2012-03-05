module HealthVault
  module WCData
  module Application

      #AppSmallLogo is a base64Binary
      class AppSmallLogo < SimpleType
      
        
      
        
        #minLength = 3
        def minLength(value)
        
          return value.length > 3
        
        end
        
      
        
        #maxLength = 40960
        def maxLength(value)
        
          return value.length < 40960
        
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

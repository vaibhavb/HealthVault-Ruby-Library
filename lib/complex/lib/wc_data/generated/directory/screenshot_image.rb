module HealthVault
  module WCData
  module Directory

      #ScreenshotImage is a base64Binary
      class ScreenshotImage < SimpleType
      
        
      
        
        #minLength = 3
        def minLength(value)
        
          return value.length > 3
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minLength(value)
          
        
          return result
        end
      end
  end
  
  end
end

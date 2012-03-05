module HealthVault
  module WCData
  module Types

      #Base64 is a string
      class Base64 < SimpleType
      
        
      
        
        #pattern = ^[a-zA-Z0-9/+]*={0,2}$
        def pattern(value)
        
          return true
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.pattern(value)
          
        
          return result
        end
      end
  end
  
  end
end

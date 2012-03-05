

module HealthVault
  module WCData
  module Types

      #Puid is a string
      class Puid < SimpleType
      
        
      
        
        #pattern = [a-fA-F0-9]{16}
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



module HealthVault
  module WCData
  module Types

      #Guid is a string
      class Guid < SimpleType
      
        
      
        
        #pattern = [a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}
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

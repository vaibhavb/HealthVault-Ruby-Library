module HealthVault
  module WCData
  module Types

      #Stringnznw is a string
      class Stringnznw < SimpleType
      
        
      
        
        #minLength = 1
        def minLength(value)
        
          return value.length > 1
        
        end
        
      
        
        #pattern = (\s*[^\s]+\s*)+
        def pattern(value)
        
          return true
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minLength(value)
          
        
          
          result = result && self.pattern(value)
          
        
          return result
        end
      end
  end
  
  end
end

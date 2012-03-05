module HealthVault
  module WCData
  module Types

      #String255nw is a string
      class String255nw < SimpleType
      
        
      
        
        #minLength = 1
        def minLength(value)
        
          return value.length > 1
        
        end
        
      
        
        #maxLength = 255
        def maxLength(value)
        
          return value.length < 255
        
        end
        
      
        
        #pattern = (\s*[^\s]+\s*)+
        def pattern(value)
        
          return true
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minLength(value)
          
        
          
          result = result && self.maxLength(value)
          
        
          
          result = result && self.pattern(value)
          
        
          return result
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Dates

      #Month is a int
      class Month < SimpleType
      
        
      
        
        #minInclusive = 1
        def minInclusive(value)
        
          return value >= 1
        
        end
        
      
        
        #maxInclusive = 12
        def maxInclusive(value)
        
          return true
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minInclusive(value)
          
        
          
          result = result && self.maxInclusive(value)
          
        
          return result
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Dates

      #Millisecond is a int
      class Millisecond < SimpleType
      
        
      
        
        #minInclusive = 0
        def minInclusive(value)
        
          return value >= 0
        
        end
        
      
        
        #maxInclusive = 999
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

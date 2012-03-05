module HealthVault
  module WCData
  module Dates

      #Year is a int
      class Year < SimpleType
      
        
      
        
        #minInclusive = 1000
        def minInclusive(value)
        
          return value >= 1000
        
        end
        
      
        
        #maxInclusive = 9999
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

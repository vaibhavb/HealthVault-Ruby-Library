

module HealthVault
  module WCData
  module Types

      #PositiveLong is a long
      class PositiveLong < SimpleType
      
        
      
        
        #minInclusive = 0
        def minInclusive(value)
        
          return value >= 0
        
        end
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.minInclusive(value)
          
        
          return result
        end
      end
  end
  
  end
end

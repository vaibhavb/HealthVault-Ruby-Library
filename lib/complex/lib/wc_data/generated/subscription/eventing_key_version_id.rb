module HealthVault
  module WCData
  module Subscription

      #EventingKeyVersionId is a string
      class EventingKeyVersionId < SimpleType
      
        
      
        
        #minLength = 1
        def minLength(value)
        
          return value.length > 1
        
        end
        
      
        
        #maxLength = 50
        def maxLength(value)
        
          return value.length < 50
        
        end
        
      
        
        #pattern = ^[a-zA-Z0-9-]*$
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

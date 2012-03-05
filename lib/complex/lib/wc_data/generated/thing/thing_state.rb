module HealthVault
  module WCData
  module Thing

      #ThingState is a string
      class ThingState < SimpleType
      
        
      
        
            
        def self.active
          return 'Active'
        end
            
        def self.deleted
          return 'Deleted'
        end
            
        def self.enum
          return ['Active','Deleted']
        end        
        
      
        def self.valid?(value)
          result = true
        
          
          
        
          
          result = result && self.enum.include?(value)
          
        
          return result
        end
      end
  end
  
  end
end

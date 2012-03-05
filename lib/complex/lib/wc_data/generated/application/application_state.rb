module HealthVault
  module WCData
  module Application

      #ApplicationState is a string
      class ApplicationState < SimpleType
      
        
      
        
            
        def self.active
          return 'Active'
        end
            
        def self.needsverification
          return 'NeedsVerification'
        end
            
        def self.suspended
          return 'Suspended'
        end
            
        def self.deleted
          return 'Deleted'
        end
            
        def self.enum
          return ['Active','NeedsVerification','Suspended','Deleted']
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

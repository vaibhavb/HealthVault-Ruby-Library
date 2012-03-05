module HealthVault
  module WCData
  module Thing

      #AuditAction is a string
      class AuditAction < SimpleType
      
        
      
        
            
        def self.created
          return 'Created'
        end
            
        def self.updated
          return 'Updated'
        end
            
        def self.deleted
          return 'Deleted'
        end
            
        def self.enum
          return ['Created','Updated','Deleted']
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

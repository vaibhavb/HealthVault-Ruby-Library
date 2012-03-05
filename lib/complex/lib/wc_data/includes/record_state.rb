

module HealthVault
  module WCData
  module Types

      #RecordState is a string
      class RecordState < SimpleType
      
        
      
        
            
        def self.active
          return 'Active'
        end
            
        def self.readonly
          return 'ReadOnly'
        end
            
        def self.suspended
          return 'Suspended'
        end
            
        def self.deleted
          return 'Deleted'
        end
            
        def self.enum
          return ['Active','ReadOnly','Suspended','Deleted']
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

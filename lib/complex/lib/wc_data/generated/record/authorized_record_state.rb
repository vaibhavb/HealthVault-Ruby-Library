module HealthVault
  module WCData
  module Record

      #AuthorizedRecordState is a string
      class AuthorizedRecordState < SimpleType
      
        
      
        
            
        def self.active
          return 'Active'
        end
            
        def self.activationpending
          return 'ActivationPending'
        end
            
        def self.activationrejected
          return 'ActivationRejected'
        end
            
        def self.enum
          return ['Active','ActivationPending','ActivationRejected']
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

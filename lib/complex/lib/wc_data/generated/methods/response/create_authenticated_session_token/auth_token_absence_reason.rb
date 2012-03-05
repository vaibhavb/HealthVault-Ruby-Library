module HealthVault
  module WCData
  module Methods
module Response
module CreateAuthenticatedSessionToken

      #AuthTokenAbsenceReason is a string
      class AuthTokenAbsenceReason < SimpleType
      
        
      
        
            
        def self.personnotauthorizedforapp
          return 'PersonNotAuthorizedForApp'
        end
            
        def self.enum
          return ['PersonNotAuthorizedForApp']
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
  
  end
end

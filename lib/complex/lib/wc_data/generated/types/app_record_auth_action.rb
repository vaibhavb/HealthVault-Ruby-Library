module HealthVault
  module WCData
  module Types

      #AppRecordAuthAction is a string
      class AppRecordAuthAction < SimpleType
      
        
      
        
            
        def self.empty
          return ''
        end
            
        def self.authorizationrequired
          return 'AuthorizationRequired'
        end
            
        def self.reauthorizationrequired
          return 'ReauthorizationRequired'
        end
            
        def self.reauthorizationnotpossible
          return 'ReauthorizationNotPossible'
        end
            
        def self.noactionrequired
          return 'NoActionRequired'
        end
            
        def self.enum
          return ['','AuthorizationRequired','ReauthorizationRequired','ReauthorizationNotPossible','NoActionRequired']
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

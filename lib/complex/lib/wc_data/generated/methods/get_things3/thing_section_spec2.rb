module HealthVault
  module WCData
  module Methods
module GetThings3

      #ThingSectionSpec2 is a string
      class ThingSectionSpec2 < SimpleType
      
        
      
        
            
        def self.core
          return 'core'
        end
            
        def self.audits
          return 'audits'
        end
            
        def self.effectivepermissions
          return 'effectivepermissions'
        end
            
        def self.digitalsignatures
          return 'digitalsignatures'
        end
            
        def self.tags
          return 'tags'
        end
            
        def self.blobpayload
          return 'blobpayload'
        end
            
        def self.enum
          return ['core','audits','effectivepermissions','digitalsignatures','tags','blobpayload']
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

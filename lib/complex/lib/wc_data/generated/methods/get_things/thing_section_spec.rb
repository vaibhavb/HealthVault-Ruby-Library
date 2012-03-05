module HealthVault
  module WCData
  module Methods
module GetThings

      #ThingSectionSpec is a string
      class ThingSectionSpec < SimpleType
      
        
      
        
            
        def self.core
          return 'core'
        end
            
        def self.audits
          return 'audits'
        end
            
        def self.otherdata
          return 'otherdata'
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
            
        def self.enum
          return ['core','audits','otherdata','effectivepermissions','digitalsignatures','tags']
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

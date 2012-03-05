module HealthVault
  module WCData
  module Thing

      #AccessAvenue is a string
      class AccessAvenue < SimpleType
      
        
      
        
            
        def self.online
          return 'Online'
        end
            
        def self.offline
          return 'Offline'
        end
            
        def self.enum
          return ['Online','Offline']
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

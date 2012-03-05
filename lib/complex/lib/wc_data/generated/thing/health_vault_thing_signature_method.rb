module HealthVault
  module WCData
  module Thing

      #HealthVaultThingSignatureMethod is a string
      class HealthVaultThingSignatureMethod < SimpleType
      
        
      
        
            
        def self.hvsignaturemethod1
          return 'HVSignatureMethod1'
        end
            
        def self.hvsignaturemethod2
          return 'HVSignatureMethod2'
        end
            
        def self.enum
          return ['HVSignatureMethod1','HVSignatureMethod2']
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


module HealthVault
  module WCData
  module Types

      #Gender is a string
      class Gender < SimpleType
      
        
      
        
            
        def self.m
          return 'm'
        end
            
        def self.f
          return 'f'
        end
            
        def self.enum
          return ['m','f']
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

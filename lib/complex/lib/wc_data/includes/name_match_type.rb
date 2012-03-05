

module HealthVault
  module WCData
  module Types

      #NameMatchType is a string
      class NameMatchType < SimpleType
      
        
      
        
            
        def self.exact
          return 'exact'
        end
            
        def self.prefix
          return 'prefix'
        end
            
        def self.contains
          return 'contains'
        end
            
        def self.enum
          return ['exact','prefix','contains']
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

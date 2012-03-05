module HealthVault
  module WCData
  module Methods
module GetThingType

      #ThingTypeSectionSpec is a string
      class ThingTypeSectionSpec < SimpleType
      
        
      
        
            
        def self.core
          return 'core'
        end
            
        def self.xsd
          return 'xsd'
        end
            
        def self.columns
          return 'columns'
        end
            
        def self.transforms
          return 'transforms'
        end
            
        def self.transformsource
          return 'transformsource'
        end
            
        def self.versions
          return 'versions'
        end
            
        def self.effectivedatexpath
          return 'effectivedatexpath'
        end
            
        def self.enum
          return ['core','xsd','columns','transforms','transformsource','versions','effectivedatexpath']
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

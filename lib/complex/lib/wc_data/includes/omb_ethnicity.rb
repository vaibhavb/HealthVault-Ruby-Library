

module HealthVault
  module WCData
  module Types

      #OmbEthnicity is a string
      class OmbEthnicity < SimpleType
      
        
      
        
            
        def self.american_indian_or_alaska_native
          return 'American Indian or Alaska Native'
        end
            
        def self.asian
          return 'Asian'
        end
            
        def self.black_or_african_american
          return 'Black or African American'
        end
            
        def self.hispanic_or_latino
          return 'Hispanic or Latino'
        end
            
        def self.native_hawaiian_or_other_pacific_islander
          return 'Native Hawaiian or Other Pacific Islander'
        end
            
        def self.white
          return 'White'
        end
            
        def self.enum
          return ['American Indian or Alaska Native','Asian','Black or African American','Hispanic or Latino','Native Hawaiian or Other Pacific Islander','White']
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

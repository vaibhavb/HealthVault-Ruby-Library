module HealthVault
  module WCData
  module Auth

      #TextualPermissionsType is a string
      class TextualPermissionsType < SimpleType
      
        
      
        
            
        def self.custom
          return 'Custom'
        end
            
        def self.readall
          return 'ReadAll'
        end
            
        def self.updateall
          return 'UpdateAll'
        end
            
        def self.createall
          return 'CreateAll'
        end
            
        def self.deleteall
          return 'DeleteAll'
        end
            
        def self.readupdateall
          return 'ReadUpdateAll'
        end
            
        def self.readcreateall
          return 'ReadCreateAll'
        end
            
        def self.updatecreateall
          return 'UpdateCreateAll'
        end
            
        def self.readupdatecreateall
          return 'ReadUpdateCreateAll'
        end
            
        def self.readupdatecreatedeleteall
          return 'ReadUpdateCreateDeleteAll'
        end
            
        def self.enum
          return ['Custom','ReadAll','UpdateAll','CreateAll','DeleteAll','ReadUpdateAll','ReadCreateAll','UpdateCreateAll','ReadUpdateCreateAll','ReadUpdateCreateDeleteAll']
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

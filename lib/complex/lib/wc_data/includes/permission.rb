

module HealthVault
  module WCData
  module Types

      #Permission is a string
      class Permission < SimpleType
      
        
      
        
            
        def self.all
          return 'All'
        end
            
        def self.read
          return 'Read'
        end
            
        def self.update
          return 'Update'
        end
            
        def self.create
          return 'Create'
        end
            
        def self.delete
          return 'Delete'
        end
            
        def self.enum
          return ['All','Read','Update','Create','Delete']
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

module HealthVault
  module WCData
  module Methods
  module Response
  module QueryPermissions
  
      class Permissions < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Permission
        def add_permission(value)
          @children['permission'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Permission
        def remove_permission(value)
            @children['permission'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: A collection of permission objects.
#<b>returns</b>: a HealthVault::WCData::Types::Permission Array
        def permission
          return @children['permission'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'permissions'
        
          
          @children['permission'] = {:name => 'permission', :class => HealthVault::WCData::Types::Permission, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

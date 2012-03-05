module HealthVault
  module WCData
  module Thing
  
      class EffectivePermissions < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Permission
        def add_permission(value)
          @children['permission'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Permission
        def remove_permission(value)
            @children['permission'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Types::Permission Array
        def permission
          return @children['permission'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def immutable=(value)
          @children['immutable'][:value] = value
        end
        
        #<b>returns</b>: a String
        def immutable
          return @children['immutable'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'effectivepermissions'
        
          
          @children['permission'] = {:name => 'permission', :class => HealthVault::WCData::Types::Permission, :value => Array.new, :min => 1, :max => 5, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['immutable'] = {:name => 'immutable', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Auth
  
      class TextualPermissions < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Auth::TextualPermissionsType
        def textual_permissions_type=(value)
          @children['textual-permissions-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::TextualPermissionsType
        def textual_permissions_type
          return @children['textual-permissions-type'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Auth::TextualRule
        def textual_rule=(value)
          @children['textual-rule'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::TextualRule
        def textual_rule
          return @children['textual-rule'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'textualpermissions'
        
          
          @children['textual-permissions-type'] = {:name => 'textual-permissions-type', :class => HealthVault::WCData::Auth::TextualPermissionsType, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['textual-permissions-type'][:value] = HealthVault::WCData::Auth::TextualPermissionsType.new
            
          
        
          
          @children['textual-rule'] = {:name => 'textual-rule', :class => HealthVault::WCData::Auth::TextualRule, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['textual-rule'][:value] = HealthVault::WCData::Auth::TextualRule.new
            
          
        
        end
      end
  end
  
  end
end

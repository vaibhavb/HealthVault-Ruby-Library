module HealthVault
  module WCData
  module Types
  
      class CardSpaceCred < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::ComplexType
        def add_anything(value)
          @children['anything'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::ComplexType
        def remove_anything(value)
            @children['anything'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::ComplexType Array
        def anything
          return @children['anything'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'cardspacecred'
        
          
          @children['anything'] = {:name => 'anything', :class => HealthVault::WCData::ComplexType, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :extension, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

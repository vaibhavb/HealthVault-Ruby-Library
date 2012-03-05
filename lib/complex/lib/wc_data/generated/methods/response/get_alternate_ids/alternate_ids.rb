module HealthVault
  module WCData
  module Methods
  module Response
  module GetAlternateIds
  
      class Alternateids < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::String255nw
        def add_alternate_id(value)
          @children['alternate-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::String255nw
        def remove_alternate_id(value)
            @children['alternate-id'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255nw Array
        def alternate_id
          return @children['alternate-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'alternate-ids'
        
          
          @children['alternate-id'] = {:name => 'alternate-id', :class => HealthVault::WCData::Types::String255nw, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

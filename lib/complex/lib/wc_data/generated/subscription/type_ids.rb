module HealthVault
  module WCData
  module Subscription
  
      class TypeIds < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_type_id(value)
          @children['type-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_type_id(value)
            @children['type-id'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: A thing type id in HealthVault.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def type_id
          return @children['type-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'typeids'
        
          
          @children['type-id'] = {:name => 'type-id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

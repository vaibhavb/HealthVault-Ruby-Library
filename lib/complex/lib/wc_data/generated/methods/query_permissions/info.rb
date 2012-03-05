module HealthVault
  module WCData
  module Methods
  module QueryPermissions
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_thing_type_id(value)
          @children['thing-type-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_thing_type_id(value)
            @children['thing-type-id'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The thing type ids identifying the thing types for which the permissions are being queried.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def thing_type_id
          return @children['thing-type-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing-type-id'] = {:name => 'thing-type-id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

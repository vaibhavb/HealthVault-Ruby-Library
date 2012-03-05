module HealthVault
  module WCData
  module Methods
  module Response
  module QueryPermissions
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::QueryPermissions::ThingTypePermission
        def add_thing_type_permission(value)
          @children['thing-type-permission'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::QueryPermissions::ThingTypePermission
        def remove_thing_type_permission(value)
            @children['thing-type-permission'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The permissions for online or offline access that the authenticated person has for the specified thing type in the specified record in the context of the current application.
#<b>remarks</b>: If for a thing type id in the request neither online nor offline access permissions are available, no result is returned for that particular thing type id.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::QueryPermissions::ThingTypePermission Array
        def thing_type_permission
          return @children['thing-type-permission'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['thing-type-permission'] = {:name => 'thing-type-permission', :class => HealthVault::WCData::Methods::Response::QueryPermissions::ThingTypePermission, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

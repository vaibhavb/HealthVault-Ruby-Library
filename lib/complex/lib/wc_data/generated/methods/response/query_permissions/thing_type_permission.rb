module HealthVault
  module WCData
  module Methods
  module Response
  module QueryPermissions
  
      class ThingTypePermission < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A unique identifier identifying the thing type for which the permissions are available.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def thing_type_id=(value)
          @children['thing-type-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def thing_type_id
          return @children['thing-type-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The permissions for online access that the authenticated person has for this thing type in the specified record in the context of the current application.
#<em>value</em> is a HealthVault::WCData::Methods::Response::QueryPermissions::Permissions
        def online_access_permissions=(value)
          @children['online-access-permissions'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::QueryPermissions::Permissions
        def online_access_permissions
          return @children['online-access-permissions'][:value]
        end
       
     
       
        
        #<b>summary</b>: The permissions for offline access that the authenticated person has for this thing type in the specified record in the context of the current application.
#<em>value</em> is a HealthVault::WCData::Methods::Response::QueryPermissions::Permissions
        def offline_access_permissions=(value)
          @children['offline-access-permissions'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::QueryPermissions::Permissions
        def offline_access_permissions
          return @children['offline-access-permissions'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingtypepermission'
        
          
          @children['thing-type-id'] = {:name => 'thing-type-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['thing-type-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['online-access-permissions'] = {:name => 'online-access-permissions', :class => HealthVault::WCData::Methods::Response::QueryPermissions::Permissions, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['offline-access-permissions'] = {:name => 'offline-access-permissions', :class => HealthVault::WCData::Methods::Response::QueryPermissions::Permissions, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

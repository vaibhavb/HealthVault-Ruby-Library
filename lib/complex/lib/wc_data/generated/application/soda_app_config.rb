module HealthVault
  module WCData
  module Application
  
      class SodaAppConfig < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The id to assign the newly created application.
#<b>remarks</b>: When installing a Soda application, the application creates its own app id to register with platform.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The id of the parent application from which to inherit properties.
#<b>remarks</b>: Soda applications typically all share a common configuration. The Soda application's configuration is inherited from the parent.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def parent_id=(value)
          @children['parent-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def parent_id
          return @children['parent-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of this Soda instance.
#<b>remarks</b>: Soda applications all share the parent's name and add a local instance name to distinguish themselves.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def name
          return @children['name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The public keys for this Soda instance.
#<b>remarks</b>: Soda applications typically configure their own keys when registering.
#<em>value</em> is a HealthVault::WCData::Application::PublicKeys
        def public_keys=(value)
          @children['public-keys'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::PublicKeys
        def public_keys
          return @children['public-keys'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'sodaappconfig'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['parent-id'] = {:name => 'parent-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['parent-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['public-keys'] = {:name => 'public-keys', :class => HealthVault::WCData::Application::PublicKeys, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['public-keys'][:value] = HealthVault::WCData::Application::PublicKeys.new
            
          
        
        end
      end
  end
  
  end
end

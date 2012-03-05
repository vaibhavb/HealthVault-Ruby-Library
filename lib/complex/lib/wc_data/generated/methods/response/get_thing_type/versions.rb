module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class Versions < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::VersionInfo
        def add_version_info(value)
          @children['version-info'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetThingType::VersionInfo
        def remove_version_info(value)
            @children['version-info'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The version information for a single version of a thing type.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::VersionInfo Array
        def version_info
          return @children['version-info'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The token that uniquely identifies a thing type.
#<b>remarks</b>: The thing-type-id should not be used by applications to reference the type as it is used only to group the types together. Instead, applications should use the version-type-id to reference the type.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def thing_type_id=(value)
          @children['thing-type-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def thing_type_id
          return @children['thing-type-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'versions'
        
          
          @children['version-info'] = {:name => 'version-info', :class => HealthVault::WCData::Methods::Response::GetThingType::VersionInfo, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['thing-type-id'] = {:name => 'thing-type-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['thing-type-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

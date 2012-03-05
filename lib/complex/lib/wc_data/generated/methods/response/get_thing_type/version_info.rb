module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class VersionInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The version type id for the thing type.
#<b>remarks</b>: The version-type-id should be used by applications to reference the type, not the thing-type-id as it is only used to group the types together.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def version_type_id=(value)
          @children['version-type-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def version_type_id
          return @children['version-type-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The version name for the thing type.
#<em>value</em> is a String
        def version_name=(value)
          @children['version-name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version_name
          return @children['version-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The version sequence for the thing type.
#<em>value</em> is a String
        def version_sequence=(value)
          @children['version-sequence'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version_sequence
          return @children['version-sequence'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'versioninfo'
        
          
          @children['version-type-id'] = {:name => 'version-type-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['version-type-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['version-name'] = {:name => 'version-name', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['version-name'][:value] = String.new
            
          
        
          
          @children['version-sequence'] = {:name => 'version-sequence', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['version-sequence'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

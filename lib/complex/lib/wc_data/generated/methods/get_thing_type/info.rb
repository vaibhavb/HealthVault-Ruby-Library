module HealthVault
  module WCData
  module Methods
  module GetThingType
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_id(value)
          @children['id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_id(value)
            @children['id'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Optional parameter. If a list of thing-types is provided, information about those thing types are returned. If a list is not provided, then a list of all supported thing types is returned.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def id
          return @children['id'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::GetThingType::ThingTypeSectionSpec
        def add_section(value)
          @children['section'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::GetThingType::ThingTypeSectionSpec
        def remove_section(value)
            @children['section'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Indicates which information about a thing-type is to be returned.
#<b>returns</b>: a HealthVault::WCData::Methods::GetThingType::ThingTypeSectionSpec Array
        def section
          return @children['section'][:value]
        end
       
     
       
        #<em>value</em> is a String
        def add_image_type(value)
          @children['image-type'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_image_type(value)
            @children['image-type'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Specifies which thing type images should be retrieved.
#<b>remarks</b>: This requests an image of the specified mime type should be returned. For example, to request a GIF image, "image/gif" should be specified. For icons, "image/vnd.microsoft.icon" should be specified. Note, not all thing types will have all image types and some may not have any images at all. If '*' is specified, all image types will be returned.
#<b>returns</b>: a String Array
        def image_type
          return @children['image-type'][:value]
        end
       
     
       
        
        #<b>summary</b>: Allows the caller to tell the server to only respond if there have been changes made to the thing types since the date/time specified.
#<b>remarks</b>: This parameter is typically used by callers who cache the results of the response. You can timestamp the data returned and then poll for thing type updates periodically and pass that timestamp in this parameter. The server will determine if any updates have occurred since that timestamp and only return results if there were any updates. This determination does not take into account the data you are asking for in the section or image-type specified but for all thing type definitions. Note, there may be slight variations between servers depending on when each server was updated with the new data. This variation may differ in a number of minutes but under normal conditions will be less than an hour.
#<em>value</em> is a String
        def last_client_refresh=(value)
          @children['last-client-refresh'][:value] = value
        end
        
        #<b>returns</b>: a String
        def last_client_refresh
          return @children['last-client-refresh'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['section'] = {:name => 'section', :class => HealthVault::WCData::Methods::GetThingType::ThingTypeSectionSpec, :value => Array.new, :min => 0, :max => 7, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['image-type'] = {:name => 'image-type', :class => String, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['last-client-refresh'] = {:name => 'last-client-refresh', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

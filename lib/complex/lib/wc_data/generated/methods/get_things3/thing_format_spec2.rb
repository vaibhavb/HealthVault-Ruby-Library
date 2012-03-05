module HealthVault
  module WCData
  module Methods
  module GetThings3
  
      class ThingFormatSpec2 < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings3::ThingSectionSpec2
        def add_section(value)
          @children['section'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::GetThings3::ThingSectionSpec2
        def remove_section(value)
            @children['section'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Specifies the sections to be retrieved.
#<b>returns</b>: a HealthVault::WCData::Methods::GetThings3::ThingSectionSpec2 Array
        def section
          return @children['section'][:value]
        end
       
     
       
        #<em>value</em> is a String
        def add_xml(value)
          @children['xml'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_xml(value)
            @children['xml'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Name of the transforms to apply to the results.
#<b>remarks</b>: This could come in the form of the name of a server supported transform; an XSL fragment; or a URL to an external XSL. If present and blank, the raw data-xml will be returned. If not present, the data-xml will not be returned.
#<b>returns</b>: a String Array
        def xml
          return @children['xml'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_type_version_format(value)
          @children['type-version-format'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_type_version_format(value)
            @children['type-version-format'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The version ID for the type format in which the results should be returned.
#<b>remarks</b>: When a type gets versioned, HealthVault will retrieve instances of multiple versions even when only one type is specified in the request filter. By default HealthVault will map the XML of the instance to the version supported by the application based on the base authorization XML specified in the configuration of the application in HealthVault. However, if multiple versions are supported by the application, it can use this parameter to state the version format to use when writing out the instance XML. For example, when querying for medications, HealthVault will retrieve medications of both version one and two schemas. If an application only supports version one of the medication schema, then HealthVault will automatically map version two instances down to the version one schema. However, if the application supports both version one and two by declaring both type IDs in the applications configuration, then version one instances will be returned using the version one schema, and version two instances will be returned using the version two schema. If this application wants to retrieve all instances using a common schema (say version two), then it would specify the version two type ID in this parameter and all instances will be mapped to version two of the medication schema before being returned.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def type_version_format
          return @children['type-version-format'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings3::BlobPayloadRequest
        def blob_payload_request=(value)
          @children['blob-payload-request'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::GetThings3::BlobPayloadRequest
        def blob_payload_request
          return @children['blob-payload-request'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingformatspec2'
        
          
          @children['section'] = {:name => 'section', :class => HealthVault::WCData::Methods::GetThings3::ThingSectionSpec2, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['xml'] = {:name => 'xml', :class => String, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['type-version-format'] = {:name => 'type-version-format', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['blob-payload-request'] = {:name => 'blob-payload-request', :class => HealthVault::WCData::Methods::GetThings3::BlobPayloadRequest, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

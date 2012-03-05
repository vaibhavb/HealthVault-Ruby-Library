module HealthVault
  module WCData
  module Thing
  
      class Thing2 < ComplexType
        
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::ThingKey
        def thing_id=(value)
          @children['thing-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::ThingKey
        def thing_id
          return @children['thing-id'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::ThingType
        def type_id=(value)
          @children['type-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::ThingType
        def type_id
          return @children['type-id'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::ThingState
        def thing_state=(value)
          @children['thing-state'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::ThingState
        def thing_state
          return @children['thing-state'][:value]
        end
       
     
       
        
        #<b>summary</b>: Thing flags.
#<b>remarks</b>: Currently supported flags: 0x1 (Personal) - the thing is accessible only by custodians. 0x2 (Downversioned) - the thing instance was converted from a newer format to an older format while being written in the response. Applications should not attempt to update an instance that has been down-versioned. 0x4 (Upversioned) - the thing instance was converted from an older format to a newer format while being written in the response. Applications should only attempt to update the instance if given explicit approval by the user as this will change the stored instance from the older format to the new format. In some cases this may cause data loss.
#<em>value</em> is a String
        def flags=(value)
          @children['flags'][:value] = value
        end
        
        #<b>returns</b>: a String
        def flags
          return @children['flags'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def eff_date=(value)
          @children['eff-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def eff_date
          return @children['eff-date'][:value]
        end
       
     
       
        
        #<b>summary</b>: Represents an audit information about the creation of this health record item.
#<b>remarks</b>: The audit records when the operation happened, by which application, and by which person. The creation audit information node is returned only by versions of the GetThings method higher than 2.
#<em>value</em> is a HealthVault::WCData::Thing::Audit2
        def created=(value)
          @children['created'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Audit2
        def created
          return @children['created'][:value]
        end
       
     
       
        
        #<b>summary</b>: Represents an audit information about the update to this health record item.
#<b>remarks</b>: The audit records when the operation happened, by which application, and by which person.
#<em>value</em> is a HealthVault::WCData::Thing::Audit2
        def updated=(value)
          @children['updated'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Audit2
        def updated
          return @children['updated'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::DataXml
        def add_data_xml(value)
          @children['data-xml'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::DataXml
        def remove_data_xml(value)
            @children['data-xml'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Thing::DataXml Array
        def data_xml
          return @children['data-xml'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::BlobPayload
        def blob_payload=(value)
          @children['blob-payload'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::BlobPayload
        def blob_payload
          return @children['blob-payload'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::EffectivePermissions
        def eff_permissions=(value)
          @children['eff-permissions'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::EffectivePermissions
        def eff_permissions
          return @children['eff-permissions'][:value]
        end
       
     
       
        
        #<b>summary</b>: The comma-separated list of user tag strings.
#<b>remarks</b>: If an empty element is passed, all tags are removed.
#<em>value</em> is a HealthVault::WCData::Types::Stringz512
        def tags=(value)
          @children['tags'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz512
        def tags
          return @children['tags'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::SignatureInfo
        def signature_info=(value)
          @children['signature-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::SignatureInfo
        def signature_info
          return @children['signature-info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thing2'
        
          
          @children['thing-id'] = {:name => 'thing-id', :class => HealthVault::WCData::Thing::ThingKey, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['type-id'] = {:name => 'type-id', :class => HealthVault::WCData::Thing::ThingType, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['thing-state'] = {:name => 'thing-state', :class => HealthVault::WCData::Thing::ThingState, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['flags'] = {:name => 'flags', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['eff-date'] = {:name => 'eff-date', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['created'] = {:name => 'created', :class => HealthVault::WCData::Thing::Audit2, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['updated'] = {:name => 'updated', :class => HealthVault::WCData::Thing::Audit2, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['data-xml'] = {:name => 'data-xml', :class => HealthVault::WCData::Thing::DataXml, :value => Array.new, :min => 0, :max => 999999, :order => 8, :place => :element, :choice => 0 }
          
        
          
          @children['blob-payload'] = {:name => 'blob-payload', :class => HealthVault::WCData::Thing::BlobPayload, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['eff-permissions'] = {:name => 'eff-permissions', :class => HealthVault::WCData::Thing::EffectivePermissions, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
          
          @children['tags'] = {:name => 'tags', :class => HealthVault::WCData::Types::Stringz512, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['signature-info'] = {:name => 'signature-info', :class => HealthVault::WCData::Thing::SignatureInfo, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

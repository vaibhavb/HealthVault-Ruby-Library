module HealthVault
  module WCData
  module Record
  
      class NonActiveAuthorization < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def record_id=(value)
          @children['record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def record_id
          return @children['record-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::EmailAddress
        def email_address=(value)
          @children['email-address'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::EmailAddress
        def email_address
          return @children['email-address'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def record_custodian=(value)
          @children['record-custodian'][:value] = value
        end
        
        #<b>returns</b>: a String
        def record_custodian
          return @children['record-custodian'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Record::AuthorizedRecordState
        def authorized_record_state=(value)
          @children['authorized-record-state'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Record::AuthorizedRecordState
        def authorized_record_state
          return @children['authorized-record-state'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def record_display_name=(value)
          @children['record-display-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def record_display_name
          return @children['record-display-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def date_auth_expires=(value)
          @children['date-auth-expires'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_auth_expires
          return @children['date-auth-expires'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def auth_xml=(value)
          @children['auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def auth_xml
          return @children['auth-xml'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def rel_type=(value)
          @children['rel-type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def rel_type
          return @children['rel-type'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def date_auth_created=(value)
          @children['date-auth-created'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_auth_created
          return @children['date-auth-created'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def date_auth_updated=(value)
          @children['date-auth-updated'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_auth_updated
          return @children['date-auth-updated'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def grantor_name=(value)
          @children['grantor-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def grantor_name
          return @children['grantor-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def grantor_person_id=(value)
          @children['grantor-person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def grantor_person_id
          return @children['grantor-person-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def grantee_name=(value)
          @children['grantee-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def grantee_name
          return @children['grantee-name'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Base64
        def record_authorization_token=(value)
          @children['record-authorization-token'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Base64
        def record_authorization_token
          return @children['record-authorization-token'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::String1024
        def email_text=(value)
          @children['email-text'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String1024
        def email_text
          return @children['email-text'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def can_access_audit=(value)
          @children['can-access-audit'][:value] = value
        end
        
        #<b>returns</b>: a String
        def can_access_audit
          return @children['can-access-audit'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application initiating the sharing invitation.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def requesting_application_id=(value)
          @children['requesting-application-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def requesting_application_id
          return @children['requesting-application-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A pin is required for added security when sharing a record.
#<b>remarks</b>: If this element is present, users attempting to accept the sharing invitation will be required to enter a pin. The user entered pin must match the stored pin to successfully accept the invitation.
#<em>value</em> is a String
        def pin_required=(value)
          @children['pin-required'][:value] = value
        end
        
        #<b>returns</b>: a String
        def pin_required
          return @children['pin-required'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The date this invitation expires.
#<b>remarks</b>: If this element is present, it represents the date after which the invitation will no longer be valid. If this element is not present, a default expiration will be assigned.
#<em>value</em> is a String
        def expires_date=(value)
          @children['expires-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def expires_date
          return @children['expires-date'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'nonactiveauthorization'
        
          
          @children['record-id'] = {:name => 'record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['record-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['email-address'] = {:name => 'email-address', :class => HealthVault::WCData::Types::EmailAddress, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['email-address'][:value] = HealthVault::WCData::Types::EmailAddress.new
            
          
        
          
          @children['record-custodian'] = {:name => 'record-custodian', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['record-custodian'][:value] = String.new
            
          
        
          
          @children['authorized-record-state'] = {:name => 'authorized-record-state', :class => HealthVault::WCData::Record::AuthorizedRecordState, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['authorized-record-state'][:value] = HealthVault::WCData::Record::AuthorizedRecordState.new
            
          
        
          
          @children['record-display-name'] = {:name => 'record-display-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['record-display-name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['date-auth-expires'] = {:name => 'date-auth-expires', :class => String, :value => nil, :min => 1, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          @children['date-auth-expires'][:value] = String.new
            
          
        
          
          @children['auth-xml'] = {:name => 'auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 1, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          @children['auth-xml'][:value] = HealthVault::WCData::Auth::AuthXml.new
            
          
        
          
          @children['rel-type'] = {:name => 'rel-type', :class => String, :value => nil, :min => 1, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          @children['rel-type'][:value] = String.new
            
          
        
          
          @children['date-auth-created'] = {:name => 'date-auth-created', :class => String, :value => nil, :min => 1, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          @children['date-auth-created'][:value] = String.new
            
          
        
          
          @children['date-auth-updated'] = {:name => 'date-auth-updated', :class => String, :value => nil, :min => 1, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          @children['date-auth-updated'][:value] = String.new
            
          
        
          
          @children['grantor-name'] = {:name => 'grantor-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          @children['grantor-name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['grantor-person-id'] = {:name => 'grantor-person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          @children['grantor-person-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['grantee-name'] = {:name => 'grantee-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 13, :place => :element, :choice => 0 }
            
          @children['grantee-name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['record-authorization-token'] = {:name => 'record-authorization-token', :class => HealthVault::WCData::Types::Base64, :value => nil, :min => 0, :max => 1, :order => 14, :place => :element, :choice => 0 }
            
          
        
          
          @children['email-text'] = {:name => 'email-text', :class => HealthVault::WCData::Types::String1024, :value => nil, :min => 0, :max => 1, :order => 15, :place => :element, :choice => 0 }
            
          
        
          
          @children['can-access-audit'] = {:name => 'can-access-audit', :class => String, :value => nil, :min => 0, :max => 1, :order => 16, :place => :element, :choice => 0 }
            
          
        
          
          @children['requesting-application-id'] = {:name => 'requesting-application-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 17, :place => :element, :choice => 0 }
            
          
        
          
          @children['pin-required'] = {:name => 'pin-required', :class => String, :value => nil, :min => 1, :max => 1, :order => 18, :place => :element, :choice => 0 }
            
          @children['pin-required'][:value] = String.new
            
          
        
          
          @children['expires-date'] = {:name => 'expires-date', :class => String, :value => nil, :min => 1, :max => 1, :order => 19, :place => :element, :choice => 0 }
            
          @children['expires-date'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

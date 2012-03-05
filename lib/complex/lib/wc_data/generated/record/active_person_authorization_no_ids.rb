module HealthVault
  module WCData
  module Record
  
      class ActivePersonAuthorizationNoIds < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
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
        #<em>value</em> is a String
        def is_group=(value)
          @children['is-group'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_group
          return @children['is-group'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::EmailAddress
        def contact_email=(value)
          @children['contact-email'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::EmailAddress
        def contact_email
          return @children['contact-email'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def contact_email_validated=(value)
          @children['contact-email-validated'][:value] = value
        end
        
        #<b>returns</b>: a String
        def contact_email_validated
          return @children['contact-email-validated'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def record_display_name=(value)
          @children['record-display-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def record_display_name
          return @children['record-display-name'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def date_auth_expires=(value)
          @children['date-auth-expires'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_auth_expires
          return @children['date-auth-expires'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def auth_xml=(value)
          @children['auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def auth_xml
          return @children['auth-xml'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def rel_type=(value)
          @children['rel-type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def rel_type
          return @children['rel-type'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def date_auth_created=(value)
          @children['date-auth-created'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_auth_created
          return @children['date-auth-created'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def date_auth_updated=(value)
          @children['date-auth-updated'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_auth_updated
          return @children['date-auth-updated'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def can_access_audit=(value)
          @children['can-access-audit'][:value] = value
        end
        
        #<b>returns</b>: a String
        def can_access_audit
          return @children['can-access-audit'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'activepersonauthorizationnoids'
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['name'][:value] = String.new
            
          
        
          
          @children['record-custodian'] = {:name => 'record-custodian', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['record-custodian'][:value] = String.new
            
          
        
          
          @children['is-group'] = {:name => 'is-group', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['is-group'][:value] = String.new
            
          
        
          
          @children['contact-email'] = {:name => 'contact-email', :class => HealthVault::WCData::Types::EmailAddress, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['contact-email'][:value] = HealthVault::WCData::Types::EmailAddress.new
            
          
        
          
          @children['contact-email-validated'] = {:name => 'contact-email-validated', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['record-display-name'] = {:name => 'record-display-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-auth-expires'] = {:name => 'date-auth-expires', :class => String, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['auth-xml'] = {:name => 'auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['rel-type'] = {:name => 'rel-type', :class => String, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-auth-created'] = {:name => 'date-auth-created', :class => String, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-auth-updated'] = {:name => 'date-auth-updated', :class => String, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['can-access-audit'] = {:name => 'can-access-audit', :class => String, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

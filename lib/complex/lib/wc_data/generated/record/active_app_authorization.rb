module HealthVault
  module WCData
  module Record
  
      class ActiveAppAuthorization < ComplexType
        
     
       
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
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def application_id=(value)
          @children['application-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def application_id
          return @children['application-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
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
        def person_online_auth_xml=(value)
          @children['person-online-auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def person_online_auth_xml
          return @children['person-online-auth-xml'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def person_offline_auth_xml=(value)
          @children['person-offline-auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def person_offline_auth_xml
          return @children['person-offline-auth-xml'][:value]
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
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def record_display_name=(value)
          @children['record-display-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def record_display_name
          return @children['record-display-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The user's preference for auto-reconciling document types like CCR and CCD for the specified record and application.
#<em>value</em> is a String
        def auto_reconcile_documents=(value)
          @children['auto-reconcile-documents'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auto_reconcile_documents
          return @children['auto-reconcile-documents'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'activeappauthorization'
        
          
          @children['record-id'] = {:name => 'record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['record-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['application-id'] = {:name => 'application-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['application-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['name'][:value] = String.new
            
          
        
          
          @children['date-auth-expires'] = {:name => 'date-auth-expires', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['person-online-auth-xml'] = {:name => 'person-online-auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['person-offline-auth-xml'] = {:name => 'person-offline-auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-auth-created'] = {:name => 'date-auth-created', :class => String, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-auth-updated'] = {:name => 'date-auth-updated', :class => String, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['record-display-name'] = {:name => 'record-display-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          @children['record-display-name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['auto-reconcile-documents'] = {:name => 'auto-reconcile-documents', :class => String, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Types
  
      class Record < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier of the health record.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        
        #<b>summary</b>: States whether the authenticated person is a record custodian.
#<b>remarks</b>: If true, the authenticated person has rights to perform special operations on the record like sharing it with other people or modifying the permissions someone has on the record. Other than the owner of the record, custodianship is usually granted to a person that has the legal right to make medical decisions on behalf of the person. For example, a parent would likely be a custodian of a child's record until that child reaches a legally mature age, or if someone has power of attorney over the individual.
#<em>value</em> is a String
        def record_custodian=(value)
          @children['record-custodian'][:value] = value
        end
        
        #<b>returns</b>: a String
        def record_custodian
          return @children['record-custodian'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The relationship the authorized person has to the owner of the record.
#<em>value</em> is a String
        def rel_type=(value)
          @children['rel-type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def rel_type
          return @children['rel-type'][:value]
        end
       
     
       
        
        #<b>summary</b>: A string representation of the relationship.
#<b>remarks</b>: This value is localized using the language and country specified in the request.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def rel_name=(value)
          @children['rel-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def rel_name
          return @children['rel-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date the authenticated person's authorization to the record expires.
#<b>remarks</b>: Once authorization expires to the record, a record custodian must extend the expiration period for the person to be able to access data in the record.
#<em>value</em> is a String
        def auth_expires=(value)
          @children['auth-expires'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auth_expires
          return @children['auth-expires'][:value]
        end
       
     
       
        
        #<b>summary</b>: States whether authorization has already expired.
#<em>value</em> is a String
        def auth_expired=(value)
          @children['auth-expired'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auth_expired
          return @children['auth-expired'][:value]
        end
       
     
       
        
        #<b>summary</b>: The display name for the record.
#<b>remarks</b>: It may be possible for a person to provide an alternate name for a record rather than the person's name. For instance, a child authorized to a parent's health record may change the display name to "Mom" rather than the parent's name.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def display_name=(value)
          @children['display-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def display_name
          return @children['display-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The state of the person's authorization to the record.
#<b>remarks</b>: Authorization to a record may be suspended or revoked if there is suspicion of fraud. In most cases the state will be Active.
#<em>value</em> is a HealthVault::WCData::Types::RecordState
        def state=(value)
          @children['state'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::RecordState
        def state
          return @children['state'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date the health record was created.
#<em>value</em> is a String
        def date_created=(value)
          @children['date-created'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_created
          return @children['date-created'][:value]
        end
       
     
       
        
        #<b>summary</b>: The maximum total size in bytes that all the things in the record can occupy together.
#<em>value</em> is a HealthVault::WCData::Types::PositiveLong
        def max_size_bytes=(value)
          @children['max-size-bytes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::PositiveLong
        def max_size_bytes
          return @children['max-size-bytes'][:value]
        end
       
     
       
        
        #<b>summary</b>: The total size in bytes that all the things in the record currently occupy together.
#<em>value</em> is a HealthVault::WCData::Types::PositiveLong
        def size_bytes=(value)
          @children['size-bytes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::PositiveLong
        def size_bytes
          return @children['size-bytes'][:value]
        end
       
     
       
        
        #<b>summary</b>: The state of the authorization in relationship to the application's requested level of access, the person's level of access to the record, and the access already granted by the person to the application.
#<em>value</em> is a HealthVault::WCData::Types::AppRecordAuthAction
        def app_record_auth_action=(value)
          @children['app-record-auth-action'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppRecordAuthAction
        def app_record_auth_action
          return @children['app-record-auth-action'][:value]
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
       
     
       
        
        #<b>summary</b>: This identifier is the same across all authorizations of this record, so it can be used to determine whether the same record has been authorized by multiple people.
#<em>value</em> is a String
        def app_specific_record_id=(value)
          @children['app-specific-record-id'][:value] = value
        end
        
        #<b>returns</b>: a String
        def app_specific_record_id
          return @children['app-specific-record-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'record'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['record-custodian'] = {:name => 'record-custodian', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['rel-type'] = {:name => 'rel-type', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['rel-type'][:value] = String.new
            
          
        
          
          @children['rel-name'] = {:name => 'rel-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['auth-expires'] = {:name => 'auth-expires', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['auth-expired'] = {:name => 'auth-expired', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['display-name'] = {:name => 'display-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['state'] = {:name => 'state', :class => HealthVault::WCData::Types::RecordState, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['date-created'] = {:name => 'date-created', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['max-size-bytes'] = {:name => 'max-size-bytes', :class => HealthVault::WCData::Types::PositiveLong, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['size-bytes'] = {:name => 'size-bytes', :class => HealthVault::WCData::Types::PositiveLong, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['app-record-auth-action'] = {:name => 'app-record-auth-action', :class => HealthVault::WCData::Types::AppRecordAuthAction, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['auto-reconcile-documents'] = {:name => 'auto-reconcile-documents', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['app-specific-record-id'] = {:name => 'app-specific-record-id', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

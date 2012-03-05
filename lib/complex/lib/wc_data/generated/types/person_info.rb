module HealthVault
  module WCData
  module Types
  
      class PersonInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier for a person.
#<b>remarks</b>: Each account in Microsoft HealthVault is assigned a unique identifier which is a 128-bit integer (16 bytes) and is used to identify the account when calling methods on the service.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def person_id=(value)
          @children['person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def person_id
          return @children['person-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of the person.
#<b>remarks</b>: This is the full name of the person. Note, it may be different than the name associated with the record the person has authorized the application to use.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def name
          return @children['name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application specific settings for the person.
#<b>remarks</b>: An application can store person preferences and other settings for the person in the Microsoft Health Service. These settings are automatically returned when GetPersonInfo is called.
#<em>value</em> is a HealthVault::WCData::Types::AppSettings
        def app_settings=(value)
          @children['app-settings'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppSettings
        def app_settings
          return @children['app-settings'][:value]
        end
       
     
       
        
        #<b>summary</b>: The health record the person selected to be used by default for the application.
#<b>remarks</b>: The first time a person uses an application, they are required to select a health record to use with the application. The HealthVault platform remembers the selection and authorizes the application to use that record. A person may choose to have multiple records authorized for one application but the application should use the selected record by default.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def selected_record_id=(value)
          @children['selected-record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def selected_record_id
          return @children['selected-record-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: Tells the caller whether more records exist for the user that weren't returned.
#<b>remarks</b>: HealthVault will return a maximum number of records for a person during a GetPersonInfo call based on configuration (default is 25 but subject to change). This element will be true if more than the maximum number of records exist for the user and some were not returned.
#<em>value</em> is a String
        def more_records=(value)
          @children['more-records'][:value] = value
        end
        
        #<b>returns</b>: a String
        def more_records
          return @children['more-records'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Record
        def add_record(value)
          @children['record'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Record
        def remove_record(value)
            @children['record'][:value].delete(value)
        end
        
        
        #<b>summary</b>: All the records that a person has authorized an application to use.
#<b>remarks</b>: A person may authorize an application to use any number of health records that the person has rights to. These are returned as a list of information about each of the records. Most applications should use the selected-record-id, but some applications that can work with many health records at one time can retrieve them using this element.
#<b>returns</b>: a HealthVault::WCData::Types::Record Array
        def record
          return @children['record'][:value]
        end
       
     
       
        
        #<b>summary</b>: The set of groups the person is a member of.
#<b>remarks</b>: This element contains group elements containing the name, unique identifier, and contact email for the group.
#<em>value</em> is a HealthVault::WCData::Types::Groups
        def groups=(value)
          @children['groups'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Groups
        def groups
          return @children['groups'][:value]
        end
       
     
       
        
        #<b>summary</b>: The user's preferred culture for use with comparisons, collation, currency, dates, etc.
#<b>remarks</b>: If not present, the application should use the operating system or browser settings as appropriate.
#<em>value</em> is a HealthVault::WCData::Types::Culture
        def preferred_culture=(value)
          @children['preferred-culture'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Culture
        def preferred_culture
          return @children['preferred-culture'][:value]
        end
       
     
       
        
        #<b>summary</b>: The user's preferred UI culture for use with selecting the language that the application should use when showing text and images to the user.
#<b>remarks</b>: If not present, the application should use the operating system or browser settings as appropriate.
#<em>value</em> is a HealthVault::WCData::Types::Culture
        def preferred_uiculture=(value)
          @children['preferred-uiculture'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Culture
        def preferred_uiculture
          return @children['preferred-uiculture'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'personinfo'
        
          
          @children['person-id'] = {:name => 'person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['person-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['app-settings'] = {:name => 'app-settings', :class => HealthVault::WCData::Types::AppSettings, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['selected-record-id'] = {:name => 'selected-record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['more-records'] = {:name => 'more-records', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['record'] = {:name => 'record', :class => HealthVault::WCData::Types::Record, :value => Array.new, :min => 0, :max => 999999, :order => 6, :place => :element, :choice => 0 }
          
        
          
          @children['groups'] = {:name => 'groups', :class => HealthVault::WCData::Types::Groups, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['preferred-culture'] = {:name => 'preferred-culture', :class => HealthVault::WCData::Types::Culture, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['preferred-uiculture'] = {:name => 'preferred-uiculture', :class => HealthVault::WCData::Types::Culture, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

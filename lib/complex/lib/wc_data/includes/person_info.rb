

module HealthVault
  module WCData
  module Types
  
      class PersonInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def person_id=(value)
          @children['person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def person_id
          return @children['person-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def name
          return @children['name'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::AppSettings
        def app_settings=(value)
          @children['app-settings'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppSettings
        def app_settings
          return @children['app-settings'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def selected_record_id=(value)
          @children['selected-record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def selected_record_id
          return @children['selected-record-id'][:value]
        end
       
     
       
        
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
        
        
        #<b>returns</b>: a HealthVault::WCData::Types::Record Array
        def record
          return @children['record'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Groups
        def groups=(value)
          @children['groups'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Groups
        def groups
          return @children['groups'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Culture
        def preferred_culture=(value)
          @children['preferred-culture'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Culture
        def preferred_culture
          return @children['preferred-culture'][:value]
        end
       
     
       
        
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

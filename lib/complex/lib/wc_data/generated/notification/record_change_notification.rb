module HealthVault
  module WCData
  module Notification
  
      class RecordChangeNotification < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The of the person whose thing(s) changed.
#<b>remarks</b>: The person id may be directly used in offline calls to HealthVault obtaining the Thing data.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def person_id=(value)
          @children['person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def person_id
          return @children['person-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The record id of the record associated with the changed Things.
#<b>remarks</b>: The record id may be directly used in calls to HealthVault obtaining the Thing data.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def record_id=(value)
          @children['record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def record_id
          return @children['record-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Notification::Thing
        def things=(value)
          @children['things'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Notification::Thing
        def things
          return @children['things'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'recordchangenotification'
        
          
          @children['person-id'] = {:name => 'person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['person-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['record-id'] = {:name => 'record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['record-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['things'] = {:name => 'things', :class => HealthVault::WCData::Notification::Thing, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['things'][:value] = HealthVault::WCData::Notification::Thing.new
            
          
        
        end
      end
  end
  
  end
end

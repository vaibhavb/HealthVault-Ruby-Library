module HealthVault
  module WCData
  module Methods
  module GetThings
  
      class ThingFilterSpec < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_type_id(value)
          @children['type-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_type_id(value)
            @children['type-id'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Allows filtering based on a thing type id.
#<b>remarks</b>: The list of thing types can be queried through the Dictionary.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def type_id
          return @children['type-id'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::ThingState
        def add_thing_state(value)
          @children['thing-state'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::ThingState
        def remove_thing_state(value)
            @children['thing-state'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Allows filtering based on a state of a thing.
#<b>remarks</b>: Current values for the state are "Active" and "Deleted".
#<b>returns</b>: a HealthVault::WCData::Thing::ThingState Array
        def thing_state
          return @children['thing-state'][:value]
        end
       
     
       
        
        #<b>summary</b>: The minimum date the thing pertains to.
#<b>remarks</b>: If this was a weight measurement, the effective time refers to the date the weight was taken, not when it was stored. When used with eff-date-max, can specify a range for effective dates for searching things. If eff-date-max is not specified, things that are created after eff-date-min are returned. All values being compared are compared as greater than or equal to.
#<em>value</em> is a String
        def eff_date_min=(value)
          @children['eff-date-min'][:value] = value
        end
        
        #<b>returns</b>: a String
        def eff_date_min
          return @children['eff-date-min'][:value]
        end
       
     
       
        
        #<b>summary</b>: The maximum date the thing pertains to.
#<b>remarks</b>: If this was a weight measurement, the effective time refers to the date the weight was taken, not when it was stored. When used with eff-date-min, can specify a range for effective dates for searching things. If eff-date-min is not specified, things that are created earlier than eff-date-max are returned. All values being compared are compared as less than or equal to.
#<em>value</em> is a String
        def eff_date_max=(value)
          @children['eff-date-max'][:value] = value
        end
        
        #<b>returns</b>: a String
        def eff_date_max
          return @children['eff-date-max'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application that created this thing.
#<b>remarks</b>: Each application is identified by a unique application id.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def created_app_id=(value)
          @children['created-app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def created_app_id
          return @children['created-app-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The person that created this thing.
#<b>remarks</b>: Each person is identified by a unique person id.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def created_person_id=(value)
          @children['created-person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def created_person_id
          return @children['created-person-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application that last updated this thing.
#<b>remarks</b>: Each application is identified by a unique application id.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def updated_app_id=(value)
          @children['updated-app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def updated_app_id
          return @children['updated-app-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The person that last updated this thing.
#<b>remarks</b>: Each person is identified by a unique person id.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def updated_person_id=(value)
          @children['updated-person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def updated_person_id
          return @children['updated-person-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The minimum date the thing was created on.
#<b>remarks</b>: When used with created-date-max, can specify a creation date range for searching things. If create-date-max is not specified, things that are created after created-date-min are returned. All values being compared are compared as greater than or equal to.
#<em>value</em> is a String
        def created_date_min=(value)
          @children['created-date-min'][:value] = value
        end
        
        #<b>returns</b>: a String
        def created_date_min
          return @children['created-date-min'][:value]
        end
       
     
       
        
        #<b>summary</b>: The maximum date the thing was created on.
#<b>remarks</b>: When used with created-date-min, can specify a creation date range for searching things. If create-date-min is not specified, things that are created earlier than created-date-max are returned. All values being compared are compared as less than or equal to.
#<em>value</em> is a String
        def created_date_max=(value)
          @children['created-date-max'][:value] = value
        end
        
        #<b>returns</b>: a String
        def created_date_max
          return @children['created-date-max'][:value]
        end
       
     
       
        
        #<b>summary</b>: The minimum date the thing was last updated on.
#<b>remarks</b>: When used with updated-date-max, can specify a updated date range for searching things. If updated-date-max is not specified, things that are created after updated-date-min are returned. All values being compared are compared as greater than or equal to.
#<em>value</em> is a String
        def updated_date_min=(value)
          @children['updated-date-min'][:value] = value
        end
        
        #<b>returns</b>: a String
        def updated_date_min
          return @children['updated-date-min'][:value]
        end
       
     
       
        
        #<b>summary</b>: The maximum date the thing was last updated on.
#<b>remarks</b>: When used with updated-date-min, can specify a updated date range for searching things. If updated-date-min is not specified, things that are created earlier than updated-date-max are returned. All values being compared are compared as less than or equal to.
#<em>value</em> is a String
        def updated_date_max=(value)
          @children['updated-date-max'][:value] = value
        end
        
        #<b>returns</b>: a String
        def updated_date_max
          return @children['updated-date-max'][:value]
        end
       
     
       
        
        #<b>summary</b>: An xpath that can be specified for filtering on the existence of specific data.
#<b>remarks</b>: XPath with wildcards such as //, *, descendant::, descendant-or-self:: are not allowed. The xpath is only used as a matching criteria. You can't use the xpath to count the number of results or add up values. The error INVALID_FILTER will be returned if wildcards are detected.
#<em>value</em> is a String
        def xpath=(value)
          @children['xpath'][:value] = value
        end
        
        #<b>returns</b>: a String
        def xpath
          return @children['xpath'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingfilterspec'
        
          
          @children['type-id'] = {:name => 'type-id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['thing-state'] = {:name => 'thing-state', :class => HealthVault::WCData::Thing::ThingState, :value => Array.new, :min => 0, :max => 2, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['eff-date-min'] = {:name => 'eff-date-min', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['eff-date-max'] = {:name => 'eff-date-max', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['created-app-id'] = {:name => 'created-app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['created-person-id'] = {:name => 'created-person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['updated-app-id'] = {:name => 'updated-app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['updated-person-id'] = {:name => 'updated-person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['created-date-min'] = {:name => 'created-date-min', :class => String, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['created-date-max'] = {:name => 'created-date-max', :class => String, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
          
          @children['updated-date-min'] = {:name => 'updated-date-min', :class => String, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['updated-date-max'] = {:name => 'updated-date-max', :class => String, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
          
          @children['xpath'] = {:name => 'xpath', :class => String, :value => nil, :min => 0, :max => 1, :order => 13, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

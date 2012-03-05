module HealthVault
  module WCData
  module Auth
  
      class Rule < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString1024
        def add_reason(value)
          @children['reason'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString1024
        def remove_reason(value)
            @children['reason'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The reason the application is requesting this access.
#<b>remarks</b>: This reason string will be presented to the user when the application asks them to approve this rule.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString1024 Array
        def reason
          return @children['reason'][:value]
        end
       
     
       
        
        #<b>summary</b>: Flags directing the display of optional rules.
#<em>value</em> is a String
        def display_flags=(value)
          @children['display-flags'][:value] = value
        end
        
        #<b>returns</b>: a String
        def display_flags
          return @children['display-flags'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Permission
        def add_permission(value)
          @children['permission'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Permission
        def remove_permission(value)
            @children['permission'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Types::Permission Array
        def permission
          return @children['permission'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Auth::Set
        def add_target_set(value)
          @children['target-set'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Auth::Set
        def remove_target_set(value)
            @children['target-set'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Auth::Set Array
        def target_set
          return @children['target-set'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Auth::Set
        def add_exception_set(value)
          @children['exception-set'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Auth::Set
        def remove_exception_set(value)
            @children['exception-set'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Auth::Set Array
        def exception_set
          return @children['exception-set'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_incr=(value)
          @children['is-incr'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_incr
          return @children['is-incr'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_optional=(value)
          @children['is-optional'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_optional
          return @children['is-optional'][:value]
        end
       
     
       
        
        #<b>summary</b>: A short name uniquely identifying the rule within the set.
#<b>remarks</b>: The name must be unique within the rule set.
#<em>value</em> is a HealthVault::WCData::Types::String16
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String16
        def name
          return @children['name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rule'
        
          
          @children['reason'] = {:name => 'reason', :class => HealthVault::WCData::Types::CultureSpecificString1024, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['display-flags'] = {:name => 'display-flags', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['permission'] = {:name => 'permission', :class => HealthVault::WCData::Types::Permission, :value => Array.new, :min => 1, :max => 5, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['target-set'] = {:name => 'target-set', :class => HealthVault::WCData::Auth::Set, :value => Array.new, :min => 0, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['exception-set'] = {:name => 'exception-set', :class => HealthVault::WCData::Auth::Set, :value => Array.new, :min => 0, :max => 999999, :order => 5, :place => :element, :choice => 0 }
          
        
          
          @children['is-incr'] = {:name => 'is-incr', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['is-optional'] = {:name => 'is-optional', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::String16, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

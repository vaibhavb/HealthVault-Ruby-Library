
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
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        
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
        def rel_type=(value)
          @children['rel-type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def rel_type
          return @children['rel-type'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def rel_name=(value)
          @children['rel-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def rel_name
          return @children['rel-name'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def auth_expires=(value)
          @children['auth-expires'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auth_expires
          return @children['auth-expires'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def auth_expired=(value)
          @children['auth-expired'][:value] = value
        end
        
        #<b>returns</b>: a String
        def auth_expired
          return @children['auth-expired'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def display_name=(value)
          @children['display-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def display_name
          return @children['display-name'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::RecordState
        def state=(value)
          @children['state'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::RecordState
        def state
          return @children['state'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def date_created=(value)
          @children['date-created'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_created
          return @children['date-created'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::PositiveLong
        def max_size_bytes=(value)
          @children['max-size-bytes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::PositiveLong
        def max_size_bytes
          return @children['max-size-bytes'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::PositiveLong
        def size_bytes=(value)
          @children['size-bytes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::PositiveLong
        def size_bytes
          return @children['size-bytes'][:value]
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
            
          
        
        end
      end
  end
  
  end
end

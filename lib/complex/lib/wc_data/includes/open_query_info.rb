

module HealthVault
  module WCData
  module Types
  
      class OpenQueryInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def query_id=(value)
          @children['query-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def query_id
          return @children['query-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def app_name=(value)
          @children['app-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def app_name
          return @children['app-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def date_created=(value)
          @children['date-created'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_created
          return @children['date-created'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def expires_date=(value)
          @children['expires-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def expires_date
          return @children['expires-date'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def pin_required=(value)
          @children['pin-required'][:value] = value
        end
        
        #<b>returns</b>: a String
        def pin_required
          return @children['pin-required'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::String128
        def note=(value)
          @children['note'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128
        def note
          return @children['note'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'openqueryinfo'
        
          
          @children['query-id'] = {:name => 'query-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['query-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['app-name'] = {:name => 'app-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['app-name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['date-created'] = {:name => 'date-created', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['date-created'][:value] = String.new
            
          
        
          
          @children['expires-date'] = {:name => 'expires-date', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['pin-required'] = {:name => 'pin-required', :class => String, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['pin-required'][:value] = String.new
            
          
        
          
          @children['note'] = {:name => 'note', :class => HealthVault::WCData::Types::String128, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

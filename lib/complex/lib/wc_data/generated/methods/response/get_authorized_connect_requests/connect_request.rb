module HealthVault
  module WCData
  module Methods
  module Response
  module GetAuthorizedConnectRequests
  
      class ConnectRequest < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier for the person.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def person_id=(value)
          @children['person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def person_id
          return @children['person-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier for the record.
#<em>value</em> is a String
        def record_id=(value)
          @children['record-id'][:value] = value
        end
        
        #<b>returns</b>: a String
        def record_id
          return @children['record-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier for the authorized application (the same application that called CreateConnectRequest).
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def app_id
          return @children['app-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The external identifier for the connect request that allows the calling application to tie the HealthVault record to it's system.
#<em>value</em> is a String
        def external_id=(value)
          @children['external-id'][:value] = value
        end
        
        #<b>returns</b>: a String
        def external_id
          return @children['external-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'connectrequest'
        
          
          @children['person-id'] = {:name => 'person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['person-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['record-id'] = {:name => 'record-id', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['record-id'][:value] = String.new
            
          
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['app-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['external-id'] = {:name => 'external-id', :class => String, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['external-id'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

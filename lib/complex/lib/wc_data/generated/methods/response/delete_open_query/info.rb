module HealthVault
  module WCData
  module Methods
  module Response
  module DeleteOpenQuery
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: An identifier of the query that has been deleted with this call.
#<b>remarks</b>: Using this identifier for subsequent calls to DeleteOpenQuery or for running the query will result in the INVALID_OPENQUERY error.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def query_id=(value)
          @children['query-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def query_id
          return @children['query-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['query-id'] = {:name => 'query-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['query-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

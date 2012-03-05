module HealthVault
  module WCData
  module Methods
  module GetOpenQueryInfo
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The identifier of the saved query whose information is to be retrieved.
#<b>remarks</b>: When a query is saved by the SaveOpenQuery method a unique identifier is issued by the Microsoft Health Services.
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

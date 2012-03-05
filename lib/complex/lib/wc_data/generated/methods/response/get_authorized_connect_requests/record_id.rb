module HealthVault
  module WCData
  module Methods
  module Response
  module GetAuthorizedConnectRequests
  
      class Recordid < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<b>summary</b>: This identifier is the same across all authorizations of this record, so it can be used to determine whether the same record has been authorized by multiple people.
#<em>value</em> is a String
        def app_specific_record_id=(value)
          @children['app-specific-record-id'][:value] = value
        end
        
        #<b>returns</b>: a String
        def app_specific_record_id
          return @children['app-specific-record-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'record-id'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['app-specific-record-id'] = {:name => 'app-specific-record-id', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetAuthorizedConnectRequests
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: Not implemented.
#<em>value</em> is a String
        def resume_key=(value)
          @children['resume-key'][:value] = value
        end
        
        #<b>returns</b>: a String
        def resume_key
          return @children['resume-key'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetAuthorizedConnectRequests::ConnectRequest
        def add_connect_request(value)
          @children['connect-request'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetAuthorizedConnectRequests::ConnectRequest
        def remove_connect_request(value)
            @children['connect-request'][:value].delete(value)
        end
        
        
        #<b>summary</b>: List of authorized connect requests tied to the calling application.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetAuthorizedConnectRequests::ConnectRequest Array
        def connect_request
          return @children['connect-request'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['resume-key'] = {:name => 'resume-key', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['connect-request'] = {:name => 'connect-request', :class => HealthVault::WCData::Methods::Response::GetAuthorizedConnectRequests::ConnectRequest, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

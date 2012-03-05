module HealthVault
  module WCData
  module Request
  
      class Request < ComplexType
        
     
       
        
        #<b>summary</b>: HMAC computed over header element using the authenticated session shared secret.
#<b>remarks</b>: This section must be present to make an authenticated request. The Microsoft Health Service will compute the HMAC over the header section and compare the resulting digest with the one provided in the request. If they are not equal, the request will fail.
#<em>value</em> is a HealthVault::WCData::Types::HMACFinalized
        def auth=(value)
          @children['auth'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HMACFinalized
        def auth
          return @children['auth'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Request::Header
        def header=(value)
          @children['header'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Request::Header
        def header
          return @children['header'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Request::Info
        def info=(value)
          @children['info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Request::Info
        def info
          return @children['info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'request'
        
          
          @children['auth'] = {:name => 'auth', :class => HealthVault::WCData::Types::HMACFinalized, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['header'] = {:name => 'header', :class => HealthVault::WCData::Request::Header, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['header'][:value] = HealthVault::WCData::Request::Header.new
            
          
        
          
          @children['info'] = {:name => 'info', :class => HealthVault::WCData::Request::Info, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['info'][:value] = HealthVault::WCData::Request::Info.new
            
          
        
        end
      end
  end
  
  end
end



module HealthVault
  module WCData
  module Request
  
      class Request < ComplexType
        
     
       
        
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

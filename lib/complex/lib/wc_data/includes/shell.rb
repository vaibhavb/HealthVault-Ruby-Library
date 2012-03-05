module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class Shell < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def url=(value)
          @children['url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def url
          return @children['url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def redirect_url=(value)
          @children['redirect-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def redirect_url
          return @children['redirect-url'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetServiceDefinition::ShellRedirectToken
        def add_redirect_token(value)
          @children['redirect-token'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetServiceDefinition::ShellRedirectToken
        def remove_redirect_token(value)
            @children['redirect-token'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetServiceDefinition::ShellRedirectToken Array
        def redirect_token
          return @children['redirect-token'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'shell'
        
          
          @children['url'] = {:name => 'url', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['url'][:value] = String.new
            
          
        
          
          @children['redirect-url'] = {:name => 'redirect-url', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['redirect-url'][:value] = String.new
            
          
        
          
          @children['redirect-token'] = {:name => 'redirect-token', :class => HealthVault::WCData::Methods::Response::GetServiceDefinition::ShellRedirectToken, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

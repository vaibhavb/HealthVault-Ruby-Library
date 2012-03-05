module HealthVault
  module WCData
  module Auth
  
      class AuthXml < ComplexType
        
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::Auth
        def auth=(value)
          @children['auth'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::Auth
        def auth
          return @children['auth'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'authxml'
        
          
          @children['auth'] = {:name => 'auth', :class => HealthVault::WCData::Auth::Auth, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

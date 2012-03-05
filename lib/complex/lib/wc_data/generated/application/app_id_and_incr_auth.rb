module HealthVault
  module WCData
  module Application
  
      class AppIdAndIncrAuth < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def incr_online_auth_xml=(value)
          @children['incr-online-auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def incr_online_auth_xml
          return @children['incr-online-auth-xml'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_incr_online_auth_replace=(value)
          @children['is-incr-online-auth-replace'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_incr_online_auth_replace
          return @children['is-incr-online-auth-replace'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def incr_offline_auth_xml=(value)
          @children['incr-offline-auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def incr_offline_auth_xml
          return @children['incr-offline-auth-xml'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_incr_offline_auth_replace=(value)
          @children['is-incr-offline-auth-replace'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_incr_offline_auth_replace
          return @children['is-incr-offline-auth-replace'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appidandincrauth'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['incr-online-auth-xml'] = {:name => 'incr-online-auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['is-incr-online-auth-replace'] = {:name => 'is-incr-online-auth-replace', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['incr-offline-auth-xml'] = {:name => 'incr-offline-auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['is-incr-offline-auth-replace'] = {:name => 'is-incr-offline-auth-replace', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

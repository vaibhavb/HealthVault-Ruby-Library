

module HealthVault
  module WCData
  module Request
  
      class Header < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def method=(value)
          @children['method'][:value] = value
        end
        
        #<b>returns</b>: a String
        def method
          return @children['method'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def method_version=(value)
          @children['method-version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def method_version
          return @children['method-version'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def target_person_id=(value)
          @children['target-person-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def target_person_id
          return @children['target-person-id'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def record_id=(value)
          @children['record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def record_id
          return @children['record-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def app_id
          return @children['app-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Request::AuthenticatedSessionInfo
        def auth_session=(value)
          @children['auth-session'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Request::AuthenticatedSessionInfo
        def auth_session
          return @children['auth-session'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Iso6391
        def language=(value)
          @children['language'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso6391
        def language
          return @children['language'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Iso3166
        def country=(value)
          @children['country'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso3166
        def country
          return @children['country'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Request::Xsl
        def final_xsl=(value)
          @children['final-xsl'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Request::Xsl
        def final_xsl
          return @children['final-xsl'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def msg_time=(value)
          @children['msg-time'][:value] = value
        end
        
        #<b>returns</b>: a String
        def msg_time
          return @children['msg-time'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def msg_ttl=(value)
          @children['msg-ttl'][:value] = value
        end
        
        #<b>returns</b>: a String
        def msg_ttl
          return @children['msg-ttl'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Version
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Version
        def version
          return @children['version'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::HashFinalized
        def info_hash=(value)
          @children['info-hash'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HashFinalized
        def info_hash
          return @children['info-hash'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'header'
        
          
          @children['method'] = {:name => 'method', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['method'][:value] = String.new
            
          
        
          
          @children['method-version'] = {:name => 'method-version', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['method-version'][:value] = String.new
            
          
        
          
          @children['target-person-id'] = {:name => 'target-person-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['record-id'] = {:name => 'record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 73964378 }
            
          
        
          
          @children['auth-session'] = {:name => 'auth-session', :class => HealthVault::WCData::Request::AuthenticatedSessionInfo, :value => nil, :min => 1, :max => 1, :order => 6, :place => :element, :choice => 73964378 }
            
          
        
          
          @children['language'] = {:name => 'language', :class => HealthVault::WCData::Types::Iso6391, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['country'] = {:name => 'country', :class => HealthVault::WCData::Types::Iso3166, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['final-xsl'] = {:name => 'final-xsl', :class => HealthVault::WCData::Request::Xsl, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['msg-time'] = {:name => 'msg-time', :class => String, :value => nil, :min => 1, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          @children['msg-time'][:value] = String.new
            
          
        
          
          @children['msg-ttl'] = {:name => 'msg-ttl', :class => String, :value => nil, :min => 1, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          @children['msg-ttl'][:value] = String.new
            
          
        
          
          @children['version'] = {:name => 'version', :class => HealthVault::WCData::Types::Version, :value => nil, :min => 1, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          @children['version'][:value] = HealthVault::WCData::Types::Version.new
            
          
        
          
          @children['info-hash'] = {:name => 'info-hash', :class => HealthVault::WCData::Types::HashFinalized, :value => nil, :min => 0, :max => 1, :order => 13, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

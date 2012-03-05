module HealthVault
  module WCData
  module Application
  
      class AppPersistentTokens < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def enabled=(value)
          @children['enabled'][:value] = value
        end
        
        #<b>returns</b>: a String
        def enabled
          return @children['enabled'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def token_ttl_seconds=(value)
          @children['token-ttl-seconds'][:value] = value
        end
        
        #<b>returns</b>: a String
        def token_ttl_seconds
          return @children['token-ttl-seconds'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'apppersistenttokens'
        
          
          @children['enabled'] = {:name => 'enabled', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['enabled'][:value] = String.new
            
          
        
          
          @children['token-ttl-seconds'] = {:name => 'token-ttl-seconds', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end



module HealthVault
  module WCData
  module Types
  
      class AppServerCred < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Sig
        def sig=(value)
          @children['sig'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Sig
        def sig
          return @children['sig'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::AppServerCredInfo
        def content=(value)
          @children['content'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::AppServerCredInfo
        def content
          return @children['content'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appservercred'
        
          
          @children['sig'] = {:name => 'sig', :class => HealthVault::WCData::Types::Sig, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['sig'][:value] = HealthVault::WCData::Types::Sig.new
            
          
        
          
          @children['content'] = {:name => 'content', :class => HealthVault::WCData::Types::AppServerCredInfo, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['content'][:value] = HealthVault::WCData::Types::AppServerCredInfo.new
            
          
        
        end
      end
  end
  
  end
end

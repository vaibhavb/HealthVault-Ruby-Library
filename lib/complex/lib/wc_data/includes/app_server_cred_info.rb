

module HealthVault
  module WCData
  module Types
  
      class AppServerCredInfo < ComplexType
        
     
       
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
        #<em>value</em> is a HealthVault::WCData::Types::HMACAlgorithm
        def shared_secret=(value)
          @children['shared-secret'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HMACAlgorithm
        def shared_secret
          return @children['shared-secret'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appservercredinfo'
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['app-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['shared-secret'] = {:name => 'shared-secret', :class => HealthVault::WCData::Types::HMACAlgorithm, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['shared-secret'][:value] = HealthVault::WCData::Types::HMACAlgorithm.new
            
          
        
        end
      end
  end
  
  end
end

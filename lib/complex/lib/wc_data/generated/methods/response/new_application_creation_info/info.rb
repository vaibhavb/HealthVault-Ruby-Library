module HealthVault
  module WCData
  module Methods
  module Response
  module NewApplicationCreationInfo
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier of the application.
#<b>remarks</b>: This identifier identifies a single instance of the application. Different soda instances will have different identifiers.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def app_id
          return @children['app-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique shared-secret for the application.
#<b>remarks</b>: The shared secret will be used to sign an authentication request with platform in the CreatAuthenticatedSessionToken call.
#<em>value</em> is a HealthVault::WCData::Types::String64
        def shared_secret=(value)
          @children['shared-secret'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String64
        def shared_secret
          return @children['shared-secret'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: An opaque token used to create a new application.
#<b>remarks</b>: This token should be passsed to HealthVault Shell where the user can create a new instance of the application and authorize it for one or more records. The token may only be used once to create a single instance of the application.
#<em>value</em> is a HealthVault::WCData::Types::String512
        def app_token=(value)
          @children['app-token'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String512
        def app_token
          return @children['app-token'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['app-id'] = {:name => 'app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['app-id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['shared-secret'] = {:name => 'shared-secret', :class => HealthVault::WCData::Types::String64, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['shared-secret'][:value] = HealthVault::WCData::Types::String64.new
            
          
        
          
          @children['app-token'] = {:name => 'app-token', :class => HealthVault::WCData::Types::String512, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['app-token'][:value] = HealthVault::WCData::Types::String512.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

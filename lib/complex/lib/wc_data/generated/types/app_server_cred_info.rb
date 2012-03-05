module HealthVault
  module WCData
  module Types
  
      class AppServerCredInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The id of the application that is providing the credential.
#<b>remarks</b>: The public key that is used to verify the signature is associated to this application id.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def app_id=(value)
          @children['app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def app_id
          return @children['app-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: This is the shared secret that is used for subsequent HMACed request envelopes when the application makes a request to Microsoft HealthVault.
#<b>remarks</b>: This section describes the algorithm that will be used on the client side during subequenct requests.
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

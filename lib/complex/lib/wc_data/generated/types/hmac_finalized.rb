module HealthVault
  module WCData
  module Types
  
      class HMACFinalized < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The resulting HMAC digest.
#<b>remarks</b>: The digest is computed again by Microsoft HealthVault and then is compared to this result.
#<em>value</em> is a HealthVault::WCData::Types::HMACFinalizedData
        def hmac_data=(value)
          @children['hmac-data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HMACFinalizedData
        def hmac_data
          return @children['hmac-data'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'hmacfinalized'
        
          
          @children['hmac-data'] = {:name => 'hmac-data', :class => HealthVault::WCData::Types::HMACFinalizedData, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['hmac-data'][:value] = HealthVault::WCData::Types::HMACFinalizedData.new
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Types
  
      class HMACAlgorithm < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The specification of the HMAC algorithm.
#<b>remarks</b>: The same algorithm must be used for all subsequent HMAC operations applied when using the same authenticated session token.
#<em>value</em> is a HealthVault::WCData::Types::HMACAlgorithmData
        def hmac_alg=(value)
          @children['hmac-alg'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HMACAlgorithmData
        def hmac_alg
          return @children['hmac-alg'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'hmacalgorithm'
        
          
          @children['hmac-alg'] = {:name => 'hmac-alg', :class => HealthVault::WCData::Types::HMACAlgorithmData, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['hmac-alg'][:value] = HealthVault::WCData::Types::HMACAlgorithmData.new
            
          
        
        end
      end
  end
  
  end
end

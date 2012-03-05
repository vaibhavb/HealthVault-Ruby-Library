module HealthVault
  module WCData
  module Types
  
      class HMACFinalizedData < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String512
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String512
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Base64 encoded digest and the algorithm used to compute the digest.
#<b>remarks</b>: The algorithm should match the agreed algorithm that was established via HMACAlgorithm when the authenticated session was created.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def alg_name=(value)
          @children['algName'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def alg_name
          return @children['algName'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'hmacfinalizeddata'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::String512, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::String512.new
            
          
        
          
          @children['algName'] = {:name => 'algName', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['algName'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
        end
      end
  end
  
  end
end

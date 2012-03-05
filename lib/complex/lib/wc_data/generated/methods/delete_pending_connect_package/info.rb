module HealthVault
  module WCData
  module Methods
  module DeletePendingConnectPackage
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def identity_code=(value)
          @children['identity-code'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def identity_code
          return @children['identity-code'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Specifies the external id for which the associated pending									connect package is removed.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def external_id=(value)
          @children['external-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def external_id
          return @children['external-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['identity-code'] = {:name => 'identity-code', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 204833063 }
            
          
        
          
          @children['external-id'] = {:name => 'external-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 204833063 }
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module DeletePendingConnectRequest
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Specifies the external id for which the associated pending connect request is removed.
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
        
          
          @children['external-id'] = {:name => 'external-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['external-id'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
        end
      end
  end
  end
  
  end
end

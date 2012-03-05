module HealthVault
  module WCData
  module Methods
  module UpdateExternalId
  
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
        #<b>summary</b>: Specifies the external id that will be replaced by the									new-external-id.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def old_external_id=(value)
          @children['old-external-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def old_external_id
          return @children['old-external-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Specifies the external id that will replace the old-external-id.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def new_external_id=(value)
          @children['new-external-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def new_external_id
          return @children['new-external-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['identity-code'] = {:name => 'identity-code', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 516493528 }
            
          
        
          
          @children['old-external-id'] = {:name => 'old-external-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 516493528 }
            
          
        
          
          @children['new-external-id'] = {:name => 'new-external-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['new-external-id'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module DisassociateAlternateId
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The alternate id to disassociate.
#<em>value</em> is a HealthVault::WCData::Types::String255nw
        def alternate_id=(value)
          @children['alternate-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255nw
        def alternate_id
          return @children['alternate-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['alternate-id'] = {:name => 'alternate-id', :class => HealthVault::WCData::Types::String255nw, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['alternate-id'][:value] = HealthVault::WCData::Types::String255nw.new
            
          
        
        end
      end
  end
  end
  
  end
end

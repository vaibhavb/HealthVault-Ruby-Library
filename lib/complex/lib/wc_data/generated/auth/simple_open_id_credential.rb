module HealthVault
  module WCData
  module Auth
  
      class SimpleOpenIdCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique claimed identifier for the person.
#<em>value</em> is a HealthVault::WCData::Types::String128
        def claimed_id=(value)
          @children['claimed-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128
        def claimed_id
          return @children['claimed-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simpleopenidcredential'
        
          
          @children['claimed-id'] = {:name => 'claimed-id', :class => HealthVault::WCData::Types::String128, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['claimed-id'][:value] = HealthVault::WCData::Types::String128.new
            
          
        
        end
      end
  end
  
  end
end

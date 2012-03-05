module HealthVault
  module WCData
  module Auth
  
      class SimpleFacebookCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique user-id for the person.
#<em>value</em> is a HealthVault::WCData::Types::PositiveLong
        def user_id=(value)
          @children['user-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::PositiveLong
        def user_id
          return @children['user-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simplefacebookcredential'
        
          
          @children['user-id'] = {:name => 'user-id', :class => HealthVault::WCData::Types::PositiveLong, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['user-id'][:value] = HealthVault::WCData::Types::PositiveLong.new
            
          
        
        end
      end
  end
  
  end
end

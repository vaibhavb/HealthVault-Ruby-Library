module HealthVault
  module WCData
  module Auth
  
      class SimpleEmergencyAccessCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The system wide unique code for the person's access.
#<em>value</em> is a HealthVault::WCData::Types::String128nw
        def access_code=(value)
          @children['access-code'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128nw
        def access_code
          return @children['access-code'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simpleemergencyaccesscredential'
        
          
          @children['access-code'] = {:name => 'access-code', :class => HealthVault::WCData::Types::String128nw, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['access-code'][:value] = HealthVault::WCData::Types::String128nw.new
            
          
        
        end
      end
  end
  
  end
end

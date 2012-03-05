module HealthVault
  module WCData
  module Auth
  
      class SecondFactorCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Auth::SimplePhoneFactorCredential
        def simple_phone_factor=(value)
          @children['simple-phone-factor'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimplePhoneFactorCredential
        def simple_phone_factor
          return @children['simple-phone-factor'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'secondfactorcredential'
        
          
          @children['simple-phone-factor'] = {:name => 'simple-phone-factor', :class => HealthVault::WCData::Auth::SimplePhoneFactorCredential, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 131643087 }
            
          
        
        end
      end
  end
  
  end
end

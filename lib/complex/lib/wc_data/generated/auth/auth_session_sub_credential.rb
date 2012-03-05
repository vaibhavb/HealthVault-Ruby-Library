module HealthVault
  module WCData
  module Auth
  
      class AuthSessionSubCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A credential for verifying identity with Microsoft Passport.
#<em>value</em> is a HealthVault::WCData::Auth::SimplePassportCredential
        def simple_passport=(value)
          @children['simple-passport'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimplePassportCredential
        def simple_passport
          return @children['simple-passport'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'authsessionsubcredential'
        
          
          @children['simple-passport'] = {:name => 'simple-passport', :class => HealthVault::WCData::Auth::SimplePassportCredential, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 351995728 }
            
          
        
        end
      end
  end
  
  end
end

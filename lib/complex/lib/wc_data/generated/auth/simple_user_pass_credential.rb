module HealthVault
  module WCData
  module Auth
  
      class SimpleUserPassCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A username and password based credential.
#<b>remarks</b>: This credential type authenticates a user with a username and password.
#<em>value</em> is a HealthVault::WCData::Auth::UserPassCred
        def simple_userpass=(value)
          @children['simple-userpass'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::UserPassCred
        def simple_userpass
          return @children['simple-userpass'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simpleuserpasscredential'
        
          
          @children['simple-userpass'] = {:name => 'simple-userpass', :class => HealthVault::WCData::Auth::UserPassCred, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['simple-userpass'][:value] = HealthVault::WCData::Auth::UserPassCred.new
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Auth
  
      class UserPassCred < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The username of the person being authenticated.
#<b>remarks</b>: Each user has a unique username and an associated password.
#<em>value</em> is a HealthVault::WCData::Types::LoginName
        def username=(value)
          @children['username'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::LoginName
        def username
          return @children['username'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The user's password.
#<b>remarks</b>: The password used to authenticate the user via the provided username.
#<em>value</em> is a HealthVault::WCData::Types::String1024
        def password=(value)
          @children['password'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String1024
        def password
          return @children['password'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'userpasscred'
        
          
          @children['username'] = {:name => 'username', :class => HealthVault::WCData::Types::LoginName, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['username'][:value] = HealthVault::WCData::Types::LoginName.new
            
          
        
          
          @children['password'] = {:name => 'password', :class => HealthVault::WCData::Types::String1024, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['password'][:value] = HealthVault::WCData::Types::String1024.new
            
          
        
        end
      end
  end
  
  end
end

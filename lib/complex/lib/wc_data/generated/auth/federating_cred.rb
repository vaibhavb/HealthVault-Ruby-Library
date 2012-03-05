module HealthVault
  module WCData
  module Auth
  
      class FederatingCred < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A credential token that demonstrates a prior successful authentication.
#<b>remarks</b>: This token is produced for application servers upon successful authentication of a user.
#<em>value</em> is a String
        def federating_auth_token=(value)
          @children['federating-auth-token'][:value] = value
        end
        
        #<b>returns</b>: a String
        def federating_auth_token
          return @children['federating-auth-token'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'federatingcred'
        
          
          @children['federating-auth-token'] = {:name => 'federating-auth-token', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['federating-auth-token'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

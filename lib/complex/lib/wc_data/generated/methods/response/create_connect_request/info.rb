module HealthVault
  module WCData
  module Methods
  module Response
  module CreateConnectRequest
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A 20 digit unique code that the user will need to enter into account.healthvault.com in order to face the challenge question and authorize the connect request.
#<b>remarks</b>: This code is to be kept secret. If the code is lost, the application should call DeletePendingConnectRequest in order to delete it, then call CreateConnectRequest again in order to obtain a new identity code.
#<em>value</em> is a String
        def identity_code=(value)
          @children['identity-code'][:value] = value
        end
        
        #<b>returns</b>: a String
        def identity_code
          return @children['identity-code'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['identity-code'] = {:name => 'identity-code', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['identity-code'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

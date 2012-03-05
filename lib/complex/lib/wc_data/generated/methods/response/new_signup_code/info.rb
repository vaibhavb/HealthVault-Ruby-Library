module HealthVault
  module WCData
  module Methods
  module Response
  module NewSignupCode
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A 20 digit unique code that the application will need to pass to account.healthvault.com in order to allow users to create an account.
#<em>value</em> is a String
        def signup_code=(value)
          @children['signup-code'][:value] = value
        end
        
        #<b>returns</b>: a String
        def signup_code
          return @children['signup-code'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['signup-code'] = {:name => 'signup-code', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['signup-code'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Types
  
      class RcptRecord < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: States whether the email addresses of custodians must have been validated for the message to be sent.
#<b>remarks</b>: If true, Microsoft HealthVault will ensure that only custodians with validated email addresses will be sent the message. Custodians with non-validated email addresses will be skipped. If no validated custodians are found, then an error will be returned.
#<em>value</em> is a String
        def validated=(value)
          @children['validated'][:value] = value
        end
        
        #<b>returns</b>: a String
        def validated
          return @children['validated'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rcptrecord'
        
          
          @children['validated'] = {:name => 'validated', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['validated'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

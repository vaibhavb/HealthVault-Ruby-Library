module HealthVault
  module WCData
  module Methods
  module CreateConnectPackage
  
      class Info < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def identity_code=(value)
          @children['identity-code'][:value] = value
        end
        
        #<b>returns</b>: a String
        def identity_code
          return @children['identity-code'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A friendly name that will be presented to the user after the user successfully answers the challenge question.
#<b>remarks</b>: The friendly name should be something that is recognizable and distinguishes one package from another so that the user may choose the expected record during validation. For example, a mother of 2 children may want her packages named after each child so she can distinguish one child's package from the others.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def friendly_name=(value)
          @children['friendly-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def friendly_name
          return @children['friendly-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A challenge question posed to the user once the identity code has been successfully entered.
#<b>remarks</b>: The challenge question should be personal and easy to answer for the user. An empty question will result in an InvalidVerificationQuestion error.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def question=(value)
          @children['question'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def question
          return @children['question'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: An identifier supplied by the external application for the connect package.
#<b>remarks</b>: This value will tie the external application to the HealthVault record being shared. For instance, this could be the patient identifier used to store information in the calling application's database.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def external_id=(value)
          @children['external-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def external_id
          return @children['external-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The package to create.
#<b>remarks</b>: This package must be a Password Protected Package Thing. It's data-other must be Base64 encoded, and must contain the encrypted data which the user will be able to decrypt by answering the verification question. The decoded and decrypted data must be a sequence of thing elements as defined by the following schema:
#<em>value</em> is a HealthVault::WCData::Thing::Thing
        def package=(value)
          @children['package'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Thing
        def package
          return @children['package'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['identity-code'] = {:name => 'identity-code', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['friendly-name'] = {:name => 'friendly-name', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['friendly-name'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['question'] = {:name => 'question', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['question'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['external-id'] = {:name => 'external-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['external-id'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['package'] = {:name => 'package', :class => HealthVault::WCData::Thing::Thing, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['package'][:value] = HealthVault::WCData::Thing::Thing.new
            
          
        
        end
      end
  end
  end
  
  end
end

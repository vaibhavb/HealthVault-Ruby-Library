module HealthVault
  module WCData
  module Methods
  module CreateConnectRequest
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A friendly name that will be presented to the user after the user successfully answers the challenge question.
#<b>remarks</b>: The friendly name should be something that is recognizable and distinguishes one connect request from another so that the user may choose the expected record during application authorization. For example, a mother of 2 children may want to name her connect requests after each child so she can distinguish one child's connect request from the others.
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
#<b>remarks</b>: The challenge question should be personal and easy to answer for the user. It is recommended that the challenge question require a one word answer. An empty question will result in an InvalidVerificationQuestion error.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def question=(value)
          @children['question'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def question
          return @children['question'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The answer that the patient is expected to provide when posed with the challenge question.
#<b>remarks</b>: It is recommended that this be a single word. The answer is case-insensitive, however, it is whitespace sensitive. An empty answer will result in an InvalidVerificationAnswer error.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def answer=(value)
          @children['answer'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def answer
          return @children['answer'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: An identifier supplied by the external application for the connect request.
#<b>remarks</b>: This value will tie the external application to the HealthVault record being shared. For instance, this could be the patient identifier used to store information in the calling application's database.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def external_id=(value)
          @children['external-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def external_id
          return @children['external-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: A URL for call back once the connect request is validated.
#<b>remarks</b>: Currently not supported.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def call_back_url=(value)
          @children['call-back-url'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def call_back_url
          return @children['call-back-url'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['friendly-name'] = {:name => 'friendly-name', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['friendly-name'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['question'] = {:name => 'question', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['question'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['answer'] = {:name => 'answer', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['answer'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['external-id'] = {:name => 'external-id', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['external-id'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['call-back-url'] = {:name => 'call-back-url', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

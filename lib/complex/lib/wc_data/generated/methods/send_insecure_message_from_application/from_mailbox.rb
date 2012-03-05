module HealthVault
  module WCData
  module Methods
  module SendInsecureMessageFromApplication
  
      class FromMailbox < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The app specified name of the mailbox from which the message is being sent.
#<b>remarks</b>: This is appended to the domain name of the application to form the From email address. This parameter should only contain the characters before the @ symbol of the email address.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def mailbox_name=(value)
          @children['mailbox-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def mailbox_name
          return @children['mailbox-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The display name of the sender
#<em>value</em> is a HealthVault::WCData::Types::String255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def name
          return @children['name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'frommailbox'
        
          
          @children['mailbox-name'] = {:name => 'mailbox-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['mailbox-name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
        end
      end
  end
  end
  
  end
end

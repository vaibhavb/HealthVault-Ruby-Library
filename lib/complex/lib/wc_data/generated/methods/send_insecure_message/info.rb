module HealthVault
  module WCData
  module Methods
  module SendInsecureMessage
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::RcptAddress
        def add_rcpt_address(value)
          @children['rcpt-address'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::RcptAddress
        def remove_rcpt_address(value)
            @children['rcpt-address'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The email address(es) to send the message to.
#<b>returns</b>: a HealthVault::WCData::Types::RcptAddress Array
        def rcpt_address
          return @children['rcpt-address'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::RcptPerson
        def add_rcpt_person(value)
          @children['rcpt-person'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::RcptPerson
        def remove_rcpt_person(value)
            @children['rcpt-person'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The Microsoft Health account(s) to send the message to.
#<b>returns</b>: a HealthVault::WCData::Types::RcptPerson Array
        def rcpt_person
          return @children['rcpt-person'][:value]
        end
       
     
       
        
        #<b>summary</b>: The health record custodians to send the message to.
#<em>value</em> is a HealthVault::WCData::Types::RcptRecord
        def rcpt_record=(value)
          @children['rcpt-record'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::RcptRecord
        def rcpt_record
          return @children['rcpt-record'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The subject of the message.
#<b>remarks</b>: This will show up in the subject field of the email message.
#<em>value</em> is a String
        def subject=(value)
          @children['subject'][:value] = value
        end
        
        #<b>returns</b>: a String
        def subject
          return @children['subject'][:value]
        end
       
     
       
        
        #<b>summary</b>: A textual representation of the message.
#<b>remarks</b>: The message can consist of two parts. One part of the message can consist of richly formatted text using HTML and the other must be plain text to support email programs that don't support the rich views or those where rich viewing has been disabled.
#<em>value</em> is a String
        def text_body=(value)
          @children['text-body'][:value] = value
        end
        
        #<b>returns</b>: a String
        def text_body
          return @children['text-body'][:value]
        end
       
     
       
        
        #<b>summary</b>: An HTML representation of the message.
#<b>remarks</b>: The message can consist of two parts. One part of the message can consist of richly formatted text using HTML and the other must be plain text to support email programs that don't support the rich views or those where rich viewing has been disabled.
#<em>value</em> is a String
        def html_body=(value)
          @children['html-body'][:value] = value
        end
        
        #<b>returns</b>: a String
        def html_body
          return @children['html-body'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['rcpt-address'] = {:name => 'rcpt-address', :class => HealthVault::WCData::Types::RcptAddress, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['rcpt-person'] = {:name => 'rcpt-person', :class => HealthVault::WCData::Types::RcptPerson, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['rcpt-record'] = {:name => 'rcpt-record', :class => HealthVault::WCData::Types::RcptRecord, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['subject'] = {:name => 'subject', :class => String, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['subject'][:value] = String.new
            
          
        
          
          @children['text-body'] = {:name => 'text-body', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['html-body'] = {:name => 'html-body', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

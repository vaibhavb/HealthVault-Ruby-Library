module HealthVault
  module WCData
  module Types
  
      class RcptAddress < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The email address to which the message will be sent.
#<b>remarks</b>: The email address must conform to standard email address rules.
#<em>value</em> is a String
        def address=(value)
          @children['address'][:value] = value
        end
        
        #<b>returns</b>: a String
        def address
          return @children['address'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The display name to be shown in the To field of the message being sent.
#<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rcptaddress'
        
          
          @children['address'] = {:name => 'address', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['address'][:value] = String.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['name'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end



module HealthVault
  module WCData
  module Types
  
      class Email < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def description=(value)
          @children['description'][:value] = value
        end
        
        #<b>returns</b>: a String
        def description
          return @children['description'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_primary=(value)
          @children['is-primary'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_primary
          return @children['is-primary'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::EmailAddress
        def address=(value)
          @children['address'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::EmailAddress
        def address
          return @children['address'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'email'
        
          
          @children['description'] = {:name => 'description', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['is-primary'] = {:name => 'is-primary', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['address'] = {:name => 'address', :class => HealthVault::WCData::Types::EmailAddress, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['address'][:value] = HealthVault::WCData::Types::EmailAddress.new
            
          
        
        end
      end
  end
  
  end
end

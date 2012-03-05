module HealthVault
  module WCData
  module Auth
  
      class SimplePhoneFactorCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A unique identifier for the credential.
#<b>remarks</b>: This identifier is supplied by the client on creation.
#<em>value</em> is a HealthVault::WCData::Types::String64
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String64
        def id
          return @children['id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The phone number to call for authentication.
#<em>value</em> is a HealthVault::WCData::Types::String32
        def phone_number=(value)
          @children['phone-number'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String32
        def phone_number
          return @children['phone-number'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simplephonefactorcredential'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::String64, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::String64.new
            
          
        
          
          @children['phone-number'] = {:name => 'phone-number', :class => HealthVault::WCData::Types::String32, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['phone-number'][:value] = HealthVault::WCData::Types::String32.new
            
          
        
        end
      end
  end
  
  end
end

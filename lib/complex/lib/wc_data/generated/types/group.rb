module HealthVault
  module WCData
  module Types
  
      class Group < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of the group.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def name
          return @children['name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A unique identifier for the group.
#<b>remarks</b>: Each group in Microsoft HealthVault is assigned a unique identifier which is a 128-bit integer (16 bytes) and is used to identify the group when calling methods on the service.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The email address at which to contact the "owner" of the group.
#<b>remarks</b>: The email address for the group should refer to a person or set of people that can manage the group membership. It should not be used to define a mailing list for the entire group.
#<em>value</em> is a HealthVault::WCData::Types::EmailAddress
        def contact_email=(value)
          @children['contact-email'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::EmailAddress
        def contact_email
          return @children['contact-email'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'group'
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['contact-email'] = {:name => 'contact-email', :class => HealthVault::WCData::Types::EmailAddress, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['contact-email'][:value] = HealthVault::WCData::Types::EmailAddress.new
            
          
        
        end
      end
  end
  
  end
end

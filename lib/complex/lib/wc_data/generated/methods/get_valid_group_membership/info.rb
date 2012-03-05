module HealthVault
  module WCData
  module Methods
  module GetValidGroupMembership
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_application_id(value)
          @children['application-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_application_id(value)
            @children['application-id'][:value].delete(value)
        end
        
        
        #<b>summary</b>: A list of application id's. If the list contains 1 or more application id's, only Group Membership things last written by an application whose id is on the list will be returned.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def application_id
          return @children['application-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['application-id'] = {:name => 'application-id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Types
  
      class Groups < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Group
        def add_group(value)
          @children['group'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Group
        def remove_group(value)
            @children['group'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: A group that a person is a member of.
#<b>remarks</b>: Groups are used for security purposes. They make it easier to grant access rights to a Microsoft HealthVault web service method, authorize people to a record, or grant access rights to particular data in a health record. They are not meant to be used as distribution lists for email or other forms of communication.
#<b>returns</b>: a HealthVault::WCData::Types::Group Array
        def group
          return @children['group'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'groups'
        
          
          @children['group'] = {:name => 'group', :class => HealthVault::WCData::Types::Group, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

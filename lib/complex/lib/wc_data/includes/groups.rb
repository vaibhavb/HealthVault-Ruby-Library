

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

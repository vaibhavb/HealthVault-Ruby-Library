module HealthVault
  module WCData
  module Methods
  module GetPersonInfo
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: Tells the method whether to return the groups the person is a member of.
#<b>remarks</b>: If true, the groups the person is a member of are returned in the response.
#<em>value</em> is a String
        def group_membership=(value)
          @children['group-membership'][:value] = value
        end
        
        #<b>returns</b>: a String
        def group_membership
          return @children['group-membership'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['group-membership'] = {:name => 'group-membership', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetThings3
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetThings3::ThingResponseGroup2
        def add_group(value)
          @children['group'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetThings3::ThingResponseGroup2
        def remove_group(value)
            @children['group'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: Contains the response to the GetThings method request.
#<b>remarks</b>: The response are returned as groups of responses that coincide with the filter groups in the request. Each group is identified with a group name that was specified in the request.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThings3::ThingResponseGroup2 Array
        def group
          return @children['group'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['group'] = {:name => 'group', :class => HealthVault::WCData::Methods::Response::GetThings3::ThingResponseGroup2, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 72397370 }
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module GetAuthorizedPeople
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The request parameters for retrieving the list of authorized people for an application using person id as a page cursor.
#<em>value</em> is a HealthVault::WCData::Methods::GetAuthorizedPeople::GetAuthorizedPeopleParameters
        def parameters=(value)
          @children['parameters'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::GetAuthorizedPeople::GetAuthorizedPeopleParameters
        def parameters
          return @children['parameters'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['parameters'] = {:name => 'parameters', :class => HealthVault::WCData::Methods::GetAuthorizedPeople::GetAuthorizedPeopleParameters, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['parameters'][:value] = HealthVault::WCData::Methods::GetAuthorizedPeople::GetAuthorizedPeopleParameters.new
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetAuthorizedPeople
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The response information for the authorized people.
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetAuthorizedPeople::GetAuthorizedPeopleResponse
        def response_results=(value)
          @children['response-results'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetAuthorizedPeople::GetAuthorizedPeopleResponse
        def response_results
          return @children['response-results'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['response-results'] = {:name => 'response-results', :class => HealthVault::WCData::Methods::Response::GetAuthorizedPeople::GetAuthorizedPeopleResponse, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['response-results'][:value] = HealthVault::WCData::Methods::Response::GetAuthorizedPeople::GetAuthorizedPeopleResponse.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

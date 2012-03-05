module HealthVault
  module WCData
  module Methods
  module Response
  module GetAuthorizedPeople
  
      class GetAuthorizedPeopleResponse < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::PersonInfo
        def add_person_info(value)
          @children['person-info'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::PersonInfo
        def remove_person_info(value)
            @children['person-info'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The person info results for this page of data.
#<b>remarks</b>: The person id of the last PersonInfo element in this list should be used as the person id cursor parameter for the next call to this method. If this list is empty and the request included a person id cursor, then there are no more authorized people to page through. If the list is empty and the request did not include a person id cursor, there are no people authorized for the application.
#<b>returns</b>: a HealthVault::WCData::Types::PersonInfo Array
        def person_info
          return @children['person-info'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Determines if there are more authorized people whose info can be requested by making a subsequent call to this method.
#<b>remarks</b>: True if there are additional authorized people whose info can be queried, otherwise False.
#<em>value</em> is a String
        def more_results=(value)
          @children['more-results'][:value] = value
        end
        
        #<b>returns</b>: a String
        def more_results
          return @children['more-results'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'getauthorizedpeopleresponse'
        
          
          @children['person-info'] = {:name => 'person-info', :class => HealthVault::WCData::Types::PersonInfo, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['more-results'] = {:name => 'more-results', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['more-results'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

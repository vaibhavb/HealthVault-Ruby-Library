module HealthVault
  module WCData
  module Methods
  module GetAuthorizedPeople
  
      class GetAuthorizedPeopleParameters < ComplexType
        
     
       
        
        #<b>summary</b>: The person id cursor used to page through the results of this method.
#<b>remarks</b>: To get the next page of results, pass in the person id of the last PersonInfo returned in the response. To get the first page of results, omit this element.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def person_id_cursor=(value)
          @children['person-id-cursor'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def person_id_cursor
          return @children['person-id-cursor'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date that is used to filter authorized people from the returned list according to the date that the person was authorized for the application.
#<b>remarks</b>: If this element is present and not empty, the method will return those authorized people whose authorization for the application was created after the specified date. If this element is omitted or empty, the method does not filter the results by the date the authorization was created.
#<em>value</em> is a String
        def authorizations_created_since=(value)
          @children['authorizations-created-since'][:value] = value
        end
        
        #<b>returns</b>: a String
        def authorizations_created_since
          return @children['authorizations-created-since'][:value]
        end
       
     
       
        
        #<b>summary</b>: The number of results to return in the response.
#<b>remarks</b>: Optional element for specifying the number of results to return in the response. If this element isn't included, a system defined default number of results are returned. The maximum number of returned results is limited to a system defined value.
#<em>value</em> is a String
        def num_results=(value)
          @children['num-results'][:value] = value
        end
        
        #<b>returns</b>: a String
        def num_results
          return @children['num-results'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'getauthorizedpeopleparameters'
        
          
          @children['person-id-cursor'] = {:name => 'person-id-cursor', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['authorizations-created-since'] = {:name => 'authorizations-created-since', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['num-results'] = {:name => 'num-results', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

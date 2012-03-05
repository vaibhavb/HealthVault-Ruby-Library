module HealthVault
  module WCData
  module Methods
  module Response
  module GetPeopleForRecord
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Record::ActivePersonAuthorizationNoIds
        def add_active_person_authorization(value)
          @children['active-person-authorization'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Record::ActivePersonAuthorizationNoIds
        def remove_active_person_authorization(value)
            @children['active-person-authorization'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: List of persons that have authorizations to the record.
#<b>returns</b>: a HealthVault::WCData::Record::ActivePersonAuthorizationNoIds Array
        def active_person_authorization
          return @children['active-person-authorization'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Record::NonActiveAuthorizationNoIds
        def add_non_active_authorization(value)
          @children['non-active-authorization'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Record::NonActiveAuthorizationNoIds
        def remove_non_active_authorization(value)
            @children['non-active-authorization'][:value].delete(value)
        end
        
        
        #<b>summary</b>: List of persons that have not accepted their sharing invites to the record.
#<b>returns</b>: a HealthVault::WCData::Record::NonActiveAuthorizationNoIds Array
        def non_active_authorization
          return @children['non-active-authorization'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['active-person-authorization'] = {:name => 'active-person-authorization', :class => HealthVault::WCData::Record::ActivePersonAuthorizationNoIds, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['non-active-authorization'] = {:name => 'non-active-authorization', :class => HealthVault::WCData::Record::NonActiveAuthorizationNoIds, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetPersonInfo
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Basic information about a person.
#<b>remarks</b>: Basic information about a person including their name, application specific settings, record selected for use by the application, and other records that are the person authorized the application to use.
#<em>value</em> is a HealthVault::WCData::Types::PersonInfo
        def person_info=(value)
          @children['person-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::PersonInfo
        def person_info
          return @children['person-info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['person-info'] = {:name => 'person-info', :class => HealthVault::WCData::Types::PersonInfo, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['person-info'][:value] = HealthVault::WCData::Types::PersonInfo.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

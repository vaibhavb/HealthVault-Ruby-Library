module HealthVault
  module WCData
  module Methods
  module Response
  module GetPersonAndRecordForAlternateId
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Information about the person and record associated with the alternate id.
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

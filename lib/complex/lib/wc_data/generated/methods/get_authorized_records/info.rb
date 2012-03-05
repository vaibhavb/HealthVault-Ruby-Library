module HealthVault
  module WCData
  module Methods
  module GetAuthorizedRecords
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_id(value)
          @children['id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_id(value)
            @children['id'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique health record identifier of the record(s) to get information about.
#<b>remarks</b>: Only health records to which the authenticated person has been granted access for the calling application will be returned. No error will be produced if the health record doesn't exist or the authenticated person doesn't have access to the record.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def id
          return @children['id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  
  end
end

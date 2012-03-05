module HealthVault
  module WCData
  module Methods
  module Response
  module GetAuthorizedRecords
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Record
        def add_record(value)
          @children['record'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Record
        def remove_record(value)
            @children['record'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Information about the requested record(s) that the authenticated person is authorized to view for the calling application.
#<b>returns</b>: a HealthVault::WCData::Types::Record Array
        def record
          return @children['record'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['record'] = {:name => 'record', :class => HealthVault::WCData::Types::Record, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module Response
  module GetUpdatedRecordsForApplication
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a String
        def add_record_id(value)
          @children['record-id'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_record_id(value)
            @children['record-id'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The list of record identifiers for the records authorized for the application that have been updated.
#<b>returns</b>: a String Array
        def record_id
          return @children['record-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['record-id'] = {:name => 'record-id', :class => String, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  end
  end
  
  end
end

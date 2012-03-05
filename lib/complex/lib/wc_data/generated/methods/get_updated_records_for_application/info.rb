module HealthVault
  module WCData
  module Methods
  module GetUpdatedRecordsForApplication
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: The date that should be used to when evaluating which record identifiers should be returned.
#<b>remarks</b>: If no date is specified, then all records for a requesting application will be returned that contain an instance of the thing-type-id specified.
#<em>value</em> is a String
        def update_date=(value)
          @children['update-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def update_date
          return @children['update-date'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['update-date'] = {:name => 'update-date', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

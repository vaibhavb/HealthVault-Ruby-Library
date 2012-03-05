module HealthVault
  module WCData
  module Methods
  module Response
  module GetUpdatedRecordsForApplication
  
      class Recordid < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def data
          return @children['data'][:value]
        end
       
     
       
        
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
          self.tag_name = 'record-id'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['update-date'] = {:name => 'update-date', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

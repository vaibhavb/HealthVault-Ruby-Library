module HealthVault
  module WCData
  module Dates
  
      class StructuredApproxDate < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::Approxdate
        def date=(value)
          @children['date'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Approxdate
        def date
          return @children['date'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Dates::Time
        def time=(value)
          @children['time'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Time
        def time
          return @children['time'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Codablevalue
        def tz=(value)
          @children['tz'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Codablevalue
        def tz
          return @children['tz'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'structuredapproxdate'
        
          
          @children['date'] = {:name => 'date', :class => HealthVault::WCData::Dates::Approxdate, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['date'][:value] = HealthVault::WCData::Dates::Approxdate.new
            
          
        
          
          @children['time'] = {:name => 'time', :class => HealthVault::WCData::Dates::Time, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['tz'] = {:name => 'tz', :class => HealthVault::WCData::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

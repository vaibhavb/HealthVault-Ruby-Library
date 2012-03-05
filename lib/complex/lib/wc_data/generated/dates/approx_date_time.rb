module HealthVault
  module WCData
  module Dates
  
      class Approxdatetime < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::StructuredApproxDate
        def structured=(value)
          @children['structured'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::StructuredApproxDate
        def structured
          return @children['structured'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def descriptive=(value)
          @children['descriptive'][:value] = value
        end
        
        #<b>returns</b>: a String
        def descriptive
          return @children['descriptive'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'approx-date-time'
        
          
          @children['structured'] = {:name => 'structured', :class => HealthVault::WCData::Dates::StructuredApproxDate, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 353927316 }
            
          
        
          
          @children['descriptive'] = {:name => 'descriptive', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 353927316 }
            
          
        
        end
      end
  end
  
  end
end

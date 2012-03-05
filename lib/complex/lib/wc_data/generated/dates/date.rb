module HealthVault
  module WCData
  module Dates
  
      class Date < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::Year
        def y=(value)
          @children['y'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Year
        def y
          return @children['y'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::Month
        def m=(value)
          @children['m'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Month
        def m
          return @children['m'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::Day
        def d=(value)
          @children['d'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Day
        def d
          return @children['d'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'date'
        
          
          @children['y'] = {:name => 'y', :class => HealthVault::WCData::Dates::Year, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['y'][:value] = HealthVault::WCData::Dates::Year.new
            
          
        
          
          @children['m'] = {:name => 'm', :class => HealthVault::WCData::Dates::Month, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['m'][:value] = HealthVault::WCData::Dates::Month.new
            
          
        
          
          @children['d'] = {:name => 'd', :class => HealthVault::WCData::Dates::Day, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['d'][:value] = HealthVault::WCData::Dates::Day.new
            
          
        
        end
      end
  end
  
  end
end

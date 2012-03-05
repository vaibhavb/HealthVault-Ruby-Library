module HealthVault
  module WCData
  module Dates
  
      class Time < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::Hour
        def h=(value)
          @children['h'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Hour
        def h
          return @children['h'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Dates::Minute
        def m=(value)
          @children['m'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Minute
        def m
          return @children['m'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Dates::Second
        def s=(value)
          @children['s'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Second
        def s
          return @children['s'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Dates::Millisecond
        def f=(value)
          @children['f'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Millisecond
        def f
          return @children['f'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'time'
        
          
          @children['h'] = {:name => 'h', :class => HealthVault::WCData::Dates::Hour, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['h'][:value] = HealthVault::WCData::Dates::Hour.new
            
          
        
          
          @children['m'] = {:name => 'm', :class => HealthVault::WCData::Dates::Minute, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['m'][:value] = HealthVault::WCData::Dates::Minute.new
            
          
        
          
          @children['s'] = {:name => 's', :class => HealthVault::WCData::Dates::Second, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['f'] = {:name => 'f', :class => HealthVault::WCData::Dates::Millisecond, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

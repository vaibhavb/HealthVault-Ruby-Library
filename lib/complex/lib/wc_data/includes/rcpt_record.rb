

module HealthVault
  module WCData
  module Types
  
      class RcptRecord < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def validated=(value)
          @children['validated'][:value] = value
        end
        
        #<b>returns</b>: a String
        def validated
          return @children['validated'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rcptrecord'
        
          
          @children['validated'] = {:name => 'validated', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['validated'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

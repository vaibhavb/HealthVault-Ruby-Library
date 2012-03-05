module HealthVault
  module WCData
  module Auth
  
      class Auth < ComplexType
        
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::Rules
        def rules=(value)
          @children['rules'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::Rules
        def rules
          return @children['rules'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'auth'
        
          
          @children['rules'] = {:name => 'rules', :class => HealthVault::WCData::Auth::Rules, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Auth
  
      class Rules < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Auth::Rule
        def add_rule(value)
          @children['rule'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Auth::Rule
        def remove_rule(value)
            @children['rule'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Auth::Rule Array
        def rule
          return @children['rule'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rules'
        
          
          @children['rule'] = {:name => 'rule', :class => HealthVault::WCData::Auth::Rule, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

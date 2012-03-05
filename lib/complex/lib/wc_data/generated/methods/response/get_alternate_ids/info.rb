module HealthVault
  module WCData
  module Methods
  module Response
  module GetAlternateIds
  
      class Info < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def alternate_ids=(value)
          @children['alternate-ids'][:value] = value
        end
        
        #<b>returns</b>: a String
        def alternate_ids
          return @children['alternate-ids'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['alternate-ids'] = {:name => 'alternate-ids', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['alternate-ids'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

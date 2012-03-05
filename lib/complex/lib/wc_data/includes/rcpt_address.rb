

module HealthVault
  module WCData
  module Types
  
      class RcptAddress < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def address=(value)
          @children['address'][:value] = value
        end
        
        #<b>returns</b>: a String
        def address
          return @children['address'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rcptaddress'
        
          
          @children['address'] = {:name => 'address', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['address'][:value] = String.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['name'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

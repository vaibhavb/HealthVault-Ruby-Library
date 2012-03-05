module HealthVault
  module WCData
  module Vocab
  
      class Vocabularymappingitem < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Codedvalue
        def reference_id=(value)
          @children['reference-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Codedvalue
        def reference_id
          return @children['reference-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabulary-mapping-item'
        
          
          @children['reference-id'] = {:name => 'reference-id', :class => HealthVault::WCData::Types::Codedvalue, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['reference-id'][:value] = HealthVault::WCData::Types::Codedvalue.new
            
          
        
        end
      end
  end
  
  end
end

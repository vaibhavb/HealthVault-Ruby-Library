module HealthVault
  module WCData
  module Vocab
  
      class Vocabularymapping < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::Vocabularymappingitem
        def add_vocabulary_mapping_item(value)
          @children['vocabulary-mapping-item'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::Vocabularymappingitem
        def remove_vocabulary_mapping_item(value)
            @children['vocabulary-mapping-item'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::Vocabularymappingitem Array
        def vocabulary_mapping_item
          return @children['vocabulary-mapping-item'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabulary-mapping'
        
          
          @children['vocabulary-mapping-item'] = {:name => 'vocabulary-mapping-item', :class => HealthVault::WCData::Vocab::Vocabularymappingitem, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Vocab
  
      class Vocabularysynonyms < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::Vocabularysynonym
        def add_vocabulary_synonym(value)
          @children['vocabulary-synonym'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::Vocabularysynonym
        def remove_vocabulary_synonym(value)
            @children['vocabulary-synonym'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::Vocabularysynonym Array
        def vocabulary_synonym
          return @children['vocabulary-synonym'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabulary-synonyms'
        
          
          @children['vocabulary-synonym'] = {:name => 'vocabulary-synonym', :class => HealthVault::WCData::Vocab::Vocabularysynonym, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

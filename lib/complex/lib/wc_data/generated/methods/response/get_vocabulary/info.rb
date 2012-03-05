module HealthVault
  module WCData
  module Methods
  module Response
  module GetVocabulary
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::VocabularyCodeSet
        def add_vocabulary(value)
          @children['vocabulary'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::VocabularyCodeSet
        def remove_vocabulary(value)
            @children['vocabulary'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: List of vocabularies with their detailed information include the actual code items
#<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyCodeSet Array
        def vocabulary
          return @children['vocabulary'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::VocabularyKeyInfo
        def add_vocabulary_key(value)
          @children['vocabulary-key'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::VocabularyKeyInfo
        def remove_vocabulary_key(value)
            @children['vocabulary-key'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: List of vocabularies
#<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyKeyInfo Array
        def vocabulary_key
          return @children['vocabulary-key'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['vocabulary'] = {:name => 'vocabulary', :class => HealthVault::WCData::Vocab::VocabularyCodeSet, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 330507445 }
          
        
          
          @children['vocabulary-key'] = {:name => 'vocabulary-key', :class => HealthVault::WCData::Vocab::VocabularyKeyInfo, :value => Array.new, :min => 1, :max => 999999, :order => 2, :place => :element, :choice => 330507445 }
          
        
        end
      end
  end
  end
  end
  
  end
end

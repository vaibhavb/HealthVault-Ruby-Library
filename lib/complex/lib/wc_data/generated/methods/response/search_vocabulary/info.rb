module HealthVault
  module WCData
  module Methods
  module Response
  module SearchVocabulary
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::VocabularyKeyInfo
        def add_vocabulary_key(value)
          @children['vocabulary-key'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::VocabularyKeyInfo
        def remove_vocabulary_key(value)
            @children['vocabulary-key'][:value].delete(value)
        end
        
        
        #<b>summary</b>: When searching vocabulary headers, this element contains the list of vocabulary key infos for vocabularies matching the search criteria.
#<b>remarks</b>: This element is absent no matching vocabularies were found.
#<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyKeyInfo Array
        def vocabulary_key
          return @children['vocabulary-key'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: When searching a specific vocabulary, this element contains the list of code items matching the search criteria, along with the vocabulary that was searched.
#<b>remarks</b>: The code-item member is absent if no matches were found.
#<em>value</em> is a HealthVault::WCData::Vocab::VocabularyCodeSet
        def code_set_result=(value)
          @children['code-set-result'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyCodeSet
        def code_set_result
          return @children['code-set-result'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['vocabulary-key'] = {:name => 'vocabulary-key', :class => HealthVault::WCData::Vocab::VocabularyKeyInfo, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 218336123 }
          
        
          
          @children['code-set-result'] = {:name => 'code-set-result', :class => HealthVault::WCData::Vocab::VocabularyCodeSet, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 218336123 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

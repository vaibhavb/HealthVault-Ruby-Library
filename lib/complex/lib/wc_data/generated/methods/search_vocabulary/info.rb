module HealthVault
  module WCData
  module Methods
  module SearchVocabulary
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: The unique key used to identify the vocabulary to search.
#<b>remarks</b>: If the vocabulary key is not present to identify a vocabulary, the vocabulary headers are searched.
#<em>value</em> is a HealthVault::WCData::Vocab::VocabularyKey
        def vocabulary_key=(value)
          @children['vocabulary-key'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyKey
        def vocabulary_key
          return @children['vocabulary-key'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Specifies the text search parameters for the vocabulary search request.
#<b>remarks</b>: The text search parameters apply to the culture specifed in the request header by language and country. If the country is absent, items for the language are searched. If language is absent, items for the default culture of the system are searched.
#<em>value</em> is a HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchParams
        def text_search_parameters=(value)
          @children['text-search-parameters'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchParams
        def text_search_parameters
          return @children['text-search-parameters'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['vocabulary-key'] = {:name => 'vocabulary-key', :class => HealthVault::WCData::Vocab::VocabularyKey, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['text-search-parameters'] = {:name => 'text-search-parameters', :class => HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchParams, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['text-search-parameters'][:value] = HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchParams.new
            
          
        
        end
      end
  end
  end
  
  end
end

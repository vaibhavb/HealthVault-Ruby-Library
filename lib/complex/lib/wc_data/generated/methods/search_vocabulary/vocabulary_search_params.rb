module HealthVault
  module WCData
  module Methods
  module SearchVocabulary
  
      class VocabularySearchParams < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The vocabulary search string to use.
#<em>value</em> is a HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchString
        def search_string=(value)
          @children['search-string'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchString
        def search_string
          return @children['search-string'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies the maximum number of vocabularies or vocabulary items to return that match the search criteria.
#<b>remarks</b>: If this element is absent, the number of returned results is limited to a system configuration value defined as "MaxResultsVocabularyRetrieval" which can be retrived through GetServiceDefinition.
#<em>value</em> is a String
        def max_results=(value)
          @children['max-results'][:value] = value
        end
        
        #<b>returns</b>: a String
        def max_results
          return @children['max-results'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabularysearchparams'
        
          
          @children['search-string'] = {:name => 'search-string', :class => HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchString, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['search-string'][:value] = HealthVault::WCData::Methods::SearchVocabulary::VocabularySearchString.new
            
          
        
          
          @children['max-results'] = {:name => 'max-results', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module GetVocabulary
  
      class VocabularyParameters < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::VocabularyKey
        def add_vocabulary_key(value)
          @children['vocabulary-key'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::VocabularyKey
        def remove_vocabulary_key(value)
            @children['vocabulary-key'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique key used to identify the vocabulary.
#<b>remarks</b>: If the family is not specified in the vocabulary key, the system looks for a vocabulary with the specified name in the HealthVault Vocabularies family. If the version is not specified in the vocabulary key, the system returns the most current version of the vocabulary.
#<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyKey Array
        def vocabulary_key
          return @children['vocabulary-key'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: If fixed-culture is set to false, the platform shall look for the vocabulary items for the culture info specified in the request header. If items are not found for the specified culture, items for the default fallback culture are returned. If fixed-culture is set to true, fallback will not occur and if items are not found for the specified culture empty strings will be returned.
#<em>value</em> is a String
        def fixed_culture=(value)
          @children['fixed-culture'][:value] = value
        end
        
        #<b>returns</b>: a String
        def fixed_culture
          return @children['fixed-culture'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabularyparameters'
        
          
          @children['vocabulary-key'] = {:name => 'vocabulary-key', :class => HealthVault::WCData::Vocab::VocabularyKey, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['fixed-culture'] = {:name => 'fixed-culture', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['fixed-culture'][:value] = String.new
            
          
        
        end
      end
  end
  end
  
  end
end

module HealthVault
  module WCData
  module Methods
  module GetVocabulary
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: Optional parameter containing the information necessary to request for a specific vocabulary.
#<b>remarks</b>: If vocabulary parameters are present they are used to get specific vocabularies in the system. If they are absent a list of key information for all the vocabularies in the system is returned.
#<em>value</em> is a HealthVault::WCData::Methods::GetVocabulary::VocabularyParameters
        def vocabulary_parameters=(value)
          @children['vocabulary-parameters'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::GetVocabulary::VocabularyParameters
        def vocabulary_parameters
          return @children['vocabulary-parameters'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['vocabulary-parameters'] = {:name => 'vocabulary-parameters', :class => HealthVault::WCData::Methods::GetVocabulary::VocabularyParameters, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

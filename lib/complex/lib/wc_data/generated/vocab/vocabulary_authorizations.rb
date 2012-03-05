module HealthVault
  module WCData
  module Vocab
  
      class VocabularyAuthorizations < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::VocabularyAuthorization
        def add_vocabulary_authorization(value)
          @children['vocabulary-authorization'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::VocabularyAuthorization
        def remove_vocabulary_authorization(value)
            @children['vocabulary-authorization'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The vocabulary family that the vocabulary belongs to.
#<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyAuthorization Array
        def vocabulary_authorization
          return @children['vocabulary-authorization'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabularyauthorizations'
        
          
          @children['vocabulary-authorization'] = {:name => 'vocabulary-authorization', :class => HealthVault::WCData::Vocab::VocabularyAuthorization, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

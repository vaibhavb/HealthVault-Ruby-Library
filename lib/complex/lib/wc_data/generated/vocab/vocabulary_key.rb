module HealthVault
  module WCData
  module Vocab
  
      class VocabularyKey < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of the vocabulary being referenced.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def name
          return @children['name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The family to which the vocabulary being referenced belongs.
#<b>remarks</b>: Vocabularies can be defined by HealthVault or by a number of standards organizations such as the ISO. The family parameter specfies this source.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def family=(value)
          @children['family'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def family
          return @children['family'][:value]
        end
       
     
       
        
        #<b>summary</b>: The version of the vocabulary being referenced.
#<b>remarks</b>: A string used to identify a particular version of a vocabulary.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def version
          return @children['version'][:value]
        end
       
     
       
        
        #<b>remarks</b>: If the code-value is specified, all vocabulary code items starting with the one which has the specified code value are returned.
#<em>value</em> is a String
        def code_value=(value)
          @children['code-value'][:value] = value
        end
        
        #<b>returns</b>: a String
        def code_value
          return @children['code-value'][:value]
        end
       
     
       
        

       
  
      
        def initialize
          super
          self.tag_name = 'vocabularykey'
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['family'] = {:name => 'family', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['version'] = {:name => 'version', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['code-value'] = {:name => 'code-value', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children[''] = {:name => '', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

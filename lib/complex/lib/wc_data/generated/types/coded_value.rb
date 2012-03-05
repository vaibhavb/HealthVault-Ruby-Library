module HealthVault
  module WCData
  module Types
  
      class Codedvalue < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The code value which identifies the item in the vocabulary.
#<b>remarks</b>: Codes are unique to the vocabulary they reside in. The codes for a particular vocabulary can be enumerated using GetVocabulary.
#<em>value</em> is a String
        def value=(value)
          @children['value'][:value] = value
        end
        
        #<b>returns</b>: a String
        def value
          return @children['value'][:value]
        end
       
     
       
        
        #<b>summary</b>: The family of the vocabulary.
#<b>remarks</b>: The family of a vocabulary partially identifies the vocabulary instance along with type and version. If the value is missing the family is assumed to be 'wc' which is the Microsoft Health Lexicon.
#<em>value</em> is a String
        def family=(value)
          @children['family'][:value] = value
        end
        
        #<b>returns</b>: a String
        def family
          return @children['family'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The type of the vocabulary.
#<b>remarks</b>: This is the name that identifies the vocabulary in the family of vocabularies.
#<em>value</em> is a String
        def type=(value)
          @children['type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def type
          return @children['type'][:value]
        end
       
     
       
        
        #<b>summary</b>: The version of the vocabulary.
#<b>remarks</b>: The version identifies which version of a vocabulary identified by the 'type' element the code is in if more than one version is present.
#<em>value</em> is a String
        def version=(value)
          @children['version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def version
          return @children['version'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'coded-value'
        
          
          @children['value'] = {:name => 'value', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['value'][:value] = String.new
            
          
        
          
          @children['family'] = {:name => 'family', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['type'] = {:name => 'type', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['type'][:value] = String.new
            
          
        
          
          @children['version'] = {:name => 'version', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

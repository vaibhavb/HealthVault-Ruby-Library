module HealthVault
  module WCData
  module Vocab
  
      class VocabularyCodeItem < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: This is the value associated with the item which uniquely identifies it within a vocabulary.
#<em>value</em> is a String
        def code_value=(value)
          @children['code-value'][:value] = value
        end
        
        #<b>returns</b>: a String
        def code_value
          return @children['code-value'][:value]
        end
       
     
       
        
        #<b>summary</b>: This is the display text of the item.
#<em>value</em> is a String
        def display_text=(value)
          @children['display-text'][:value] = value
        end
        
        #<b>returns</b>: a String
        def display_text
          return @children['display-text'][:value]
        end
       
     
       
        
        #<b>summary</b>: This is the abbreviation text of an item.
#<em>value</em> is a String
        def abbreviation_text=(value)
          @children['abbreviation-text'][:value] = value
        end
        
        #<b>returns</b>: a String
        def abbreviation_text
          return @children['abbreviation-text'][:value]
        end
       
     
       
        
        #<b>summary</b>: Contains important auxillary information that can be used for operations such as unit conversions.
#<em>value</em> is a HealthVault::WCData::Vocab::InfoXml
        def info_xml=(value)
          @children['info-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::InfoXml
        def info_xml
          return @children['info-xml'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabularycodeitem'
        
          
          @children['code-value'] = {:name => 'code-value', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['code-value'][:value] = String.new
            
          
        
          
          @children['display-text'] = {:name => 'display-text', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['abbreviation-text'] = {:name => 'abbreviation-text', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['info-xml'] = {:name => 'info-xml', :class => HealthVault::WCData::Vocab::InfoXml, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

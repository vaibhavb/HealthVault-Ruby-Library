module HealthVault
  module WCData
  module Vocab
  
      class VocabularyAuthorization < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The family of vocabularies, that the specified vocabulary belongs to.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def family=(value)
          @children['family'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def family
          return @children['family'][:value]
        end
       
     
       
        
        #<b>summary</b>: The family of vocabularies, that the specified vocabulary belongs to.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def name
          return @children['name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabularyauthorization'
        
          
          @children['family'] = {:name => 'family', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['family'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

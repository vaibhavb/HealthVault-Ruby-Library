module HealthVault
  module WCData
  module Vocab
  
      class Medicationstrength < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The display text of the medication strength.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def display_text=(value)
          @children['display-text'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def display_text
          return @children['display-text'][:value]
        end
       
     
       
        
        #<b>summary</b>: The value of the strength.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def value=(value)
          @children['value'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def value
          return @children['value'][:value]
        end
       
     
       
        
        #<b>summary</b>: The unit of the strength.
#<em>value</em> is a HealthVault::WCData::Types::Codablevalue
        def unit=(value)
          @children['unit'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Codablevalue
        def unit
          return @children['unit'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'medication-strength'
        
          
          @children['display-text'] = {:name => 'display-text', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['display-text'][:value] = HealthVault::WCData::Types::Stringnz.new
            
          
        
          
          @children['value'] = {:name => 'value', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['unit'] = {:name => 'unit', :class => HealthVault::WCData::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Types
  
      class Codablevalue < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The textual representation of the value.
#<b>remarks</b>: This may be the display value from one of the coded-values or it may be the user entered value.
#<em>value</em> is a String
        def text=(value)
          @children['text'][:value] = value
        end
        
        #<b>returns</b>: a String
        def text
          return @children['text'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Codedvalue
        def add_code(value)
          @children['code'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Codedvalue
        def remove_code(value)
            @children['code'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The codes representing the value from a Microsoft Health vocabulary.
#<b>remarks</b>: Some values can be represented by codes in more that one vocabulary. If appropriate add coded-values from as many vocabularies as are relevant.
#<b>returns</b>: a HealthVault::WCData::Types::Codedvalue Array
        def code
          return @children['code'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'codable-value'
        
          
          @children['text'] = {:name => 'text', :class => String, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['text'][:value] = String.new
            
          
        
          
          @children['code'] = {:name => 'code', :class => HealthVault::WCData::Types::Codedvalue, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

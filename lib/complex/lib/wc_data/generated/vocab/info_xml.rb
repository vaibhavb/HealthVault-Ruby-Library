module HealthVault
  module WCData
  module Vocab
  
      class InfoXml < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Code item specific blob that contains auxillary information about the code item.
#<b>remarks</b>: This can be for instance, information on how to convert a value from one measurement unit to another, or nutritional information of a food item.
#<em>value</em> is a HealthVault::WCData::ComplexType
        def anything=(value)
          @children['anything'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::ComplexType
        def anything
          return @children['anything'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'infoxml'
        
          
          @children['anything'] = {:name => 'anything', :class => HealthVault::WCData::ComplexType, :value => nil, :min => 1, :max => 1, :order => 1, :place => :extension, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Vocab
  
      class Druginfo < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Vocab::Medicationstrength
        def add_strength(value)
          @children['strength'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Vocab::Medicationstrength
        def remove_strength(value)
            @children['strength'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The strength of the medication.
#<b>returns</b>: a HealthVault::WCData::Vocab::Medicationstrength Array
        def strength
          return @children['strength'][:value]
        end
       
     
       
        
        #<b>summary</b>: The routes of the medication.
#<em>value</em> is a HealthVault::WCData::Vocab::Medicationroutes
        def routes=(value)
          @children['routes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::Medicationroutes
        def routes
          return @children['routes'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'drug-info'
        
          
          @children['strength'] = {:name => 'strength', :class => HealthVault::WCData::Vocab::Medicationstrength, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['routes'] = {:name => 'routes', :class => HealthVault::WCData::Vocab::Medicationroutes, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

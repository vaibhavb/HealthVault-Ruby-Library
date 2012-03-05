module HealthVault
  module WCData
  module Vocab
  
      class Medicationroutes < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Codablevalue
        def add_route(value)
          @children['route'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Codablevalue
        def remove_route(value)
            @children['route'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The route of the medication.
#<b>returns</b>: a HealthVault::WCData::Types::Codablevalue Array
        def route
          return @children['route'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'medication-routes'
        
          
          @children['route'] = {:name => 'route', :class => HealthVault::WCData::Types::Codablevalue, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

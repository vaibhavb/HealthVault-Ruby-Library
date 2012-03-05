
module HealthVault
  module WCData
  module Types
  
      class Culture < ComplexType
        
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Iso6391
        def language=(value)
          @children['language'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso6391
        def language
          return @children['language'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Iso3166
        def country=(value)
          @children['country'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso3166
        def country
          return @children['country'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'culture'
        
          
          @children['language'] = {:name => 'language', :class => HealthVault::WCData::Types::Iso6391, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['country'] = {:name => 'country', :class => HealthVault::WCData::Types::Iso3166, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

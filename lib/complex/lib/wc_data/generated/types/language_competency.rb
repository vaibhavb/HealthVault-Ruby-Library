module HealthVault
  module WCData
  module Types
  
      class LanguageCompetency < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Iso6391
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso6391
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_primary=(value)
          @children['is-primary'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_primary
          return @children['is-primary'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'languagecompetency'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Iso6391, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Iso6391.new
            
          
        
          
          @children['is-primary'] = {:name => 'is-primary', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

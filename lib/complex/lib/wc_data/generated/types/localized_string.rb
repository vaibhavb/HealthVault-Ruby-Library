module HealthVault
  module WCData
  module Types
  
      class LocalizedString < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a String
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Iso6391
        def language=(value)
          @children['language'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso6391
        def language
          return @children['language'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'localizedstring'
        
          
          @children['data'] = {:name => 'data', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = String.new
            
          
        
          
          @children['language'] = {:name => 'language', :class => HealthVault::WCData::Types::Iso6391, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

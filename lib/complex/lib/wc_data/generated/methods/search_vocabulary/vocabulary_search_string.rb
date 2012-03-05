module HealthVault
  module WCData
  module Methods
  module SearchVocabulary
  
      class VocabularySearchString < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<b>summary</b>: The search mode to use for this search string. If not specified, the "Prefix" search mode is used.
#<b>remarks</b>: Allowable values for the search mode string are:
#<em>value</em> is a HealthVault::WCData::Types::String64
        def search_mode=(value)
          @children['search-mode'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String64
        def search_mode
          return @children['search-mode'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'vocabularysearchstring'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
          
          @children['search-mode'] = {:name => 'search-mode', :class => HealthVault::WCData::Types::String64, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

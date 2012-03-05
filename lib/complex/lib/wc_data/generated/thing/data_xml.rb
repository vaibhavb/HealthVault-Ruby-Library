module HealthVault
  module WCData
  module Thing
  
      class DataXml < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::ComplexType
        def anything=(value)
          @children['anything'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::ComplexType
        def anything
          return @children['anything'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::Common
        def common=(value)
          @children['common'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Common
        def common
          return @children['common'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def transform=(value)
          @children['transform'][:value] = value
        end
        
        #<b>returns</b>: a String
        def transform
          return @children['transform'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'dataxml'
        
          
          @children['anything'] = {:name => 'anything', :class => HealthVault::WCData::ComplexType, :value => nil, :min => 1, :max => 1, :order => 1, :place => :extension, :choice => 0 }
            
          
        
          
          @children['common'] = {:name => 'common', :class => HealthVault::WCData::Thing::Common, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['transform'] = {:name => 'transform', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

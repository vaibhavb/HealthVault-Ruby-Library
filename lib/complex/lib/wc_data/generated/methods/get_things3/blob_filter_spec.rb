module HealthVault
  module WCData
  module Methods
  module GetThings3
  
      class BlobFilterSpec < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringnwz64
        def blob_name=(value)
          @children['blob-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnwz64
        def blob_name
          return @children['blob-name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobfilterspec'
        
          
          @children['blob-name'] = {:name => 'blob-name', :class => HealthVault::WCData::Types::Stringnwz64, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['blob-name'][:value] = HealthVault::WCData::Types::Stringnwz64.new
            
          
        
        end
      end
  end
  end
  
  end
end

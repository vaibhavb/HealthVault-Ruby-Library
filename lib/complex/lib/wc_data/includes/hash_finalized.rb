
module HealthVault
  module WCData
  module Types
  
      class HashFinalized < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::HashFinalizedData
        def hash_data=(value)
          @children['hash-data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::HashFinalizedData
        def hash_data
          return @children['hash-data'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'hashfinalized'
        
          
          @children['hash-data'] = {:name => 'hash-data', :class => HealthVault::WCData::Types::HashFinalizedData, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['hash-data'][:value] = HealthVault::WCData::Types::HashFinalizedData.new
            
          
        
        end
      end
  end
  
  end
end

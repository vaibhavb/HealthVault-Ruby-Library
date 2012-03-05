module HealthVault
  module WCData
  module Thing
  
      class BlobHashInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringz255
        def algorithm=(value)
          @children['algorithm'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz255
        def algorithm
          return @children['algorithm'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::BlobHashAlgorithmParameters
        def params=(value)
          @children['params'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::BlobHashAlgorithmParameters
        def params
          return @children['params'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringnz512
        def hash=(value)
          @children['hash'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz512
        def hash
          return @children['hash'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobhashinfo'
        
          
          @children['algorithm'] = {:name => 'algorithm', :class => HealthVault::WCData::Types::Stringz255, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['algorithm'][:value] = HealthVault::WCData::Types::Stringz255.new
            
          
        
          
          @children['params'] = {:name => 'params', :class => HealthVault::WCData::Types::BlobHashAlgorithmParameters, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['hash'] = {:name => 'hash', :class => HealthVault::WCData::Types::Stringnz512, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['hash'][:value] = HealthVault::WCData::Types::Stringnz512.new
            
          
        
        end
      end
  end
  
  end
end

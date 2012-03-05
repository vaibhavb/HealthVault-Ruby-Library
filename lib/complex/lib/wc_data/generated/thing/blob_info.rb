module HealthVault
  module WCData
  module Thing
  
      class BlobInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringz255
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz255
        def name
          return @children['name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Stringz1024
        def content_type=(value)
          @children['content-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz1024
        def content_type
          return @children['content-type'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Thing::BlobHashInfo
        def hash_info=(value)
          @children['hash-info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::BlobHashInfo
        def hash_info
          return @children['hash-info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobinfo'
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::Stringz255, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['name'][:value] = HealthVault::WCData::Types::Stringz255.new
            
          
        
          
          @children['content-type'] = {:name => 'content-type', :class => HealthVault::WCData::Types::Stringz1024, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['content-type'][:value] = HealthVault::WCData::Types::Stringz1024.new
            
          
        
          
          @children['hash-info'] = {:name => 'hash-info', :class => HealthVault::WCData::Thing::BlobHashInfo, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

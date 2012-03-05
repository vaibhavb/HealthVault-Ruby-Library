
module HealthVault
  module WCData
  module Types
  
      class RcptPerson < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def validated=(value)
          @children['validated'][:value] = value
        end
        
        #<b>returns</b>: a String
        def validated
          return @children['validated'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'rcptperson'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['validated'] = {:name => 'validated', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['validated'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

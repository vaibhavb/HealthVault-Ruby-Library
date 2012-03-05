

module HealthVault
  module WCData
  module Types
  
      class Sig < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String512
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String512
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String16
        def digest_method=(value)
          @children['digestMethod'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String16
        def digest_method
          return @children['digestMethod'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String16
        def sig_method=(value)
          @children['sigMethod'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String16
        def sig_method
          return @children['sigMethod'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def thumbprint=(value)
          @children['thumbprint'][:value] = value
        end
        
        #<b>returns</b>: a String
        def thumbprint
          return @children['thumbprint'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'sig'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::String512, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::String512.new
            
          
        
          
          @children['digestMethod'] = {:name => 'digestMethod', :class => HealthVault::WCData::Types::String16, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['digestMethod'][:value] = HealthVault::WCData::Types::String16.new
            
          
        
          
          @children['sigMethod'] = {:name => 'sigMethod', :class => HealthVault::WCData::Types::String16, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['sigMethod'][:value] = HealthVault::WCData::Types::String16.new
            
          
        
          
          @children['thumbprint'] = {:name => 'thumbprint', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['thumbprint'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

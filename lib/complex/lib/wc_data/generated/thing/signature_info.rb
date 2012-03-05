module HealthVault
  module WCData
  module Thing
  
      class SignatureInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Thing::SignatureData
        def sig_data=(value)
          @children['sig-data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::SignatureData
        def sig_data
          return @children['sig-data'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'signatureinfo'
        
          
          @children['sig-data'] = {:name => 'sig-data', :class => HealthVault::WCData::Thing::SignatureData, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['sig-data'][:value] = HealthVault::WCData::Thing::SignatureData.new
            
          
        
        end
      end
  end
  
  end
end

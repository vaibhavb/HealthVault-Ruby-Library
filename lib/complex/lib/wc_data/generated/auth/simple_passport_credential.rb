module HealthVault
  module WCData
  module Auth
  
      class SimplePassportCredential < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique Passport identifier for the person.
#<em>value</em> is a HealthVault::WCData::Types::Puid
        def puid=(value)
          @children['puid'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Puid
        def puid
          return @children['puid'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'simplepassportcredential'
        
          
          @children['puid'] = {:name => 'puid', :class => HealthVault::WCData::Types::Puid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['puid'][:value] = HealthVault::WCData::Types::Puid.new
            
          
        
        end
      end
  end
  
  end
end

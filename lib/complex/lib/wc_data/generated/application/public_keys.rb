module HealthVault
  module WCData
  module Application
  
      class PublicKeys < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Application::PublicKey
        def add_public_key(value)
          @children['public-key'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Application::PublicKey
        def remove_public_key(value)
            @children['public-key'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Application::PublicKey Array
        def public_key
          return @children['public-key'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'publickeys'
        
          
          @children['public-key'] = {:name => 'public-key', :class => HealthVault::WCData::Application::PublicKey, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

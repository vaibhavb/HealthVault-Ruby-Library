module HealthVault
  module WCData
  module Methods
  module Response
  module GetServiceDefinition
  
      class ConfigurationEntry < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a String
        def data
          return @children['data'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of the configuration value.
#<em>value</em> is a String
        def key=(value)
          @children['key'][:value] = value
        end
        
        #<b>returns</b>: a String
        def key
          return @children['key'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'configurationentry'
        
          
          @children['data'] = {:name => 'data', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = String.new
            
          
        
          
          @children['key'] = {:name => 'key', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['key'][:value] = String.new
            
          
        
        end
      end
  end
  end
  end
  
  end
end

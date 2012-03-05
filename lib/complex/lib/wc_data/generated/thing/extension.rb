module HealthVault
  module WCData
  module Thing
  
      class Extension < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::ComplexType
        def add_anything(value)
          @children['anything'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::ComplexType
        def remove_anything(value)
            @children['anything'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::ComplexType Array
        def anything
          return @children['anything'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def source=(value)
          @children['source'][:value] = value
        end
        
        #<b>returns</b>: a String
        def source
          return @children['source'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def ver=(value)
          @children['ver'][:value] = value
        end
        
        #<b>returns</b>: a String
        def ver
          return @children['ver'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def logo=(value)
          @children['logo'][:value] = value
        end
        
        #<b>returns</b>: a String
        def logo
          return @children['logo'][:value]
        end
       
     
       
        
        #<b>remarks</b>: Optional URL to xsl that will transform extension to html suitable for rendering in a popup or small frame. HealthVault does not use this transform for rendering extensions. Applications should consider the security implications of running external transforms within the context of their application.
#<em>value</em> is a String
        def xsl=(value)
          @children['xsl'][:value] = value
        end
        
        #<b>returns</b>: a String
        def xsl
          return @children['xsl'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'extension'
        
          
          @children['anything'] = {:name => 'anything', :class => HealthVault::WCData::ComplexType, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :extension, :choice => 0 }
          
        
          
          @children['source'] = {:name => 'source', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['source'][:value] = String.new
            
          
        
          
          @children['ver'] = {:name => 'ver', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['logo'] = {:name => 'logo', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['xsl'] = {:name => 'xsl', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

module HealthVault
  module WCData
  module Thing
  
      class ThingKey < ComplexType
        
     
       
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
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def version_stamp=(value)
          @children['version-stamp'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def version_stamp
          return @children['version-stamp'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingkey'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['version-stamp'] = {:name => 'version-stamp', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['version-stamp'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
        end
      end
  end
  
  end
end

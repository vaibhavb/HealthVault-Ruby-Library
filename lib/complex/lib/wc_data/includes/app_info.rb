

module HealthVault
  module WCData
  module Types
  
      class AppInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def data=(value)
          @children['data'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def data
          return @children['data'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_multi_record_app=(value)
          @children['is-multi-record-app'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_multi_record_app
          return @children['is-multi-record-app'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appinfo'
        
          
          @children['data'] = {:name => 'data', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 0, :place => :extension, :choice => 0 }
            
          @children['data'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['is-multi-record-app'] = {:name => 'is-multi-record-app', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

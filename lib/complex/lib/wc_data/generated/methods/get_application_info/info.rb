module HealthVault
  module WCData
  module Methods
  module GetApplicationInfo
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: The all-languages parameter determines how many of instances of culture specific values are returned.
#<b>remarks</b>: If true, all values are returned. If false, the value with the best matching language is returned. For example, the name property of the application info may be localized into multiple languages.
#<em>value</em> is a String
        def all_languages=(value)
          @children['all-languages'][:value] = value
        end
        
        #<b>returns</b>: a String
        def all_languages
          return @children['all-languages'][:value]
        end
       
     
       
        
        #<b>summary</b>: Gets the application configuration information for the specified child application ID if the calling application is the master application for that child.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def child_app_id=(value)
          @children['child-app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def child_app_id
          return @children['child-app-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['all-languages'] = {:name => 'all-languages', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['child-app-id'] = {:name => 'child-app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

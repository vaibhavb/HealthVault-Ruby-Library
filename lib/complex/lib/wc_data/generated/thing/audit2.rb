module HealthVault
  module WCData
  module Thing
  
      class Audit2 < ComplexType
        
     
       
        
        #<b>summary</b>: The unique application identifier for the code base of the application that created the audit.
#<b>remarks</b>: When an application performs a write action on an item the audit is stamped with the applications unique identifier. In the case of master/child applications, or SODA applications, the audit app-id is the identifier of the child or installation of the application. The master-app-id is the application identifier for the root of the configuration for that application. In the case of master/child applications, this is the application identifier of the master. For SODA applications, this is the application identifier for the root configuration of the application.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def master_app_id=(value)
          @children['master-app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def master_app_id
          return @children['master-app-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'audit2'
        
          
          @children['master-app-id'] = {:name => 'master-app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

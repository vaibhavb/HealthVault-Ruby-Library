module HealthVault
  module WCData
  module Directory
  
      class MobilePlatform < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Directory::AppUrl
        def app_url=(value)
          @children['app-url'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::AppUrl
        def app_url
          return @children['app-url'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def os=(value)
          @children['os'][:value] = value
        end
        
        #<b>returns</b>: a String
        def os
          return @children['os'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'mobileplatform'
        
          
          @children['app-url'] = {:name => 'app-url', :class => HealthVault::WCData::Directory::AppUrl, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['app-url'][:value] = HealthVault::WCData::Directory::AppUrl.new
            
          
        
          
          @children['os'] = {:name => 'os', :class => String, :value => nil, :min => 1, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          @children['os'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

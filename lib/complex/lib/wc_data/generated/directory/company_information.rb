module HealthVault
  module WCData
  module Directory
  
      class CompanyInformation < ComplexType
        
     
       
        
        #<b>summary</b>: Logo of the company.
#<em>value</em> is a HealthVault::WCData::Directory::Logo
        def company_logo=(value)
          @children['company-logo'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Directory::Logo
        def company_logo
          return @children['company-logo'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255nw
        def add_company_name(value)
          @children['company-name'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString255nw
        def remove_company_name(value)
            @children['company-name'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The name of the company.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255nw Array
        def company_name
          return @children['company-name'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificUrl
        def add_company_url(value)
          @children['company-url'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificUrl
        def remove_company_url(value)
            @children['company-url'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Company url.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificUrl Array
        def company_url
          return @children['company-url'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'companyinformation'
        
          
          @children['company-logo'] = {:name => 'company-logo', :class => HealthVault::WCData::Directory::Logo, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['company-name'] = {:name => 'company-name', :class => HealthVault::WCData::Types::CultureSpecificString255nw, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['company-url'] = {:name => 'company-url', :class => HealthVault::WCData::Types::CultureSpecificUrl, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

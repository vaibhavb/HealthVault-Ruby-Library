module HealthVault
  module WCData
  module Application
  
      class AppWithLogos < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255
        def add_name(value)
          @children['name'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString255
        def remove_name(value)
            @children['name'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255 Array
        def name
          return @children['name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def app_auth_required=(value)
          @children['app-auth-required'][:value] = value
        end
        
        #<b>returns</b>: a String
        def app_auth_required
          return @children['app-auth-required'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def is_published=(value)
          @children['is-published'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_published
          return @children['is-published'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def action_url=(value)
          @children['action-url'][:value] = value
        end
        
        #<b>returns</b>: a String
        def action_url
          return @children['action-url'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString
        def add_description(value)
          @children['description'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString
        def remove_description(value)
            @children['description'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString Array
        def description
          return @children['description'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString
        def add_auth_reason(value)
          @children['auth-reason'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString
        def remove_auth_reason(value)
            @children['auth-reason'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString Array
        def auth_reason
          return @children['auth-reason'][:value]
        end
       
     
       
        
        #<b>remarks</b>: This parameter specifies the application's domain name. E-mail sent from the application, will have its From address originating from this domain. If the domain were myapp.com, then the From address will be "mailbox@myapp.com", where mailbox is specified in the send message request from the app.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def domain_name=(value)
          @children['domain-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def domain_name
          return @children['domain-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: Access token for client services.
#<b>remarks</b>: Token required to access HealthVault client services. For instance, the vocabulary search service.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def client_service_token=(value)
          @children['client-service-token'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def client_service_token
          return @children['client-service-token'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Application::AppLargeLogoInfo
        def large_logo=(value)
          @children['large-logo'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppLargeLogoInfo
        def large_logo
          return @children['large-logo'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Application::AppSmallLogoInfo
        def small_logo=(value)
          @children['small-logo'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppSmallLogoInfo
        def small_logo
          return @children['small-logo'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Application::AppPersistentTokens
        def persistent_tokens=(value)
          @children['persistent-tokens'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppPersistentTokens
        def persistent_tokens
          return @children['persistent-tokens'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def person_online_base_auth_xml=(value)
          @children['person-online-base-auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def person_online_base_auth_xml
          return @children['person-online-base-auth-xml'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def person_offline_base_auth_xml=(value)
          @children['person-offline-base-auth-xml'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def person_offline_base_auth_xml
          return @children['person-offline-base-auth-xml'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application's privacy statement as a base64 encoded string and its corresponding content type.
#<em>value</em> is a HealthVault::WCData::Application::StatementInfo
        def privacy_statement=(value)
          @children['privacy-statement'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::StatementInfo
        def privacy_statement
          return @children['privacy-statement'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application's terms of use statement as a base64 encoded string and its corresponding content type.
#<em>value</em> is a HealthVault::WCData::Application::StatementInfo
        def terms_of_use=(value)
          @children['terms-of-use'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::StatementInfo
        def terms_of_use
          return @children['terms-of-use'][:value]
        end
       
     
       
        
        #<b>summary</b>: The message to display to the use when direct to clinial authorization completes successfully.
#<b>remarks</b>: Represented as a base64 encoded string and its corresponding content type.
#<em>value</em> is a HealthVault::WCData::Application::StatementInfo
        def dtc_success_message=(value)
          @children['dtc-success-message'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::StatementInfo
        def dtc_success_message
          return @children['dtc-success-message'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application attributes.
#<em>value</em> is a HealthVault::WCData::Application::ApplicationAttributes
        def app_attributes=(value)
          @children['app-attributes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::ApplicationAttributes
        def app_attributes
          return @children['app-attributes'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The type of application.
#<b>remarks</b>: The valid application types are: Web, Soda
#<em>value</em> is a HealthVault::WCData::Types::String32
        def app_type=(value)
          @children['app-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String32
        def app_type
          return @children['app-type'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application id of the master app.
#<b>remarks</b>: This element may be included if the application is a child of a master application.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def master_app_id=(value)
          @children['master-app-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def master_app_id
          return @children['master-app-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application name of the master app.
#<b>remarks</b>: This element may be included if the application is a child of a master application.
#<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255
        def master_app_name=(value)
          @children['master-app-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255
        def master_app_name
          return @children['master-app-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date the application was created.
#<b>remarks</b>: The date the application was created within HealthVault.
#<em>value</em> is a String
        def created_date=(value)
          @children['created-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def created_date
          return @children['created-date'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date the application was updated.
#<b>remarks</b>: The date the application was updated within HealthVault.
#<em>value</em> is a String
        def updated_date=(value)
          @children['updated-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def updated_date
          return @children['updated-date'][:value]
        end
       
     
       
        
        #<b>summary</b>: A comma separated list of IP address masks from which the application can call HealthVault.
#<b>remarks</b>: HealthVault provides some added security to applications by supporting calls that come from valid IP addresses of the application. IP addresses can be specified using a specific IP address and 32 bit mask like 192.168.0.1/32 or by specifying a subnet and mask like 192.168.0.0/16. You can have more than one IP address or mask by comma separating them.
#<em>value</em> is a HealthVault::WCData::Types::String255nw
        def valid_ip_prefixes=(value)
          @children['valid-ip-prefixes'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255nw
        def valid_ip_prefixes
          return @children['valid-ip-prefixes'][:value]
        end
       
     
       
        
        #<b>summary</b>: List of HealthVault vocabularies that the child applications of this application can be configured to have access to.
#<b>remarks</b>: If unspecified the access is given to all publically available vocabularies in the HealthVault platform.
#<em>value</em> is a HealthVault::WCData::Vocab::VocabularyAuthorizations
        def vocabulary_authorizations=(value)
          @children['vocabulary-authorizations'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyAuthorizations
        def vocabulary_authorizations
          return @children['vocabulary-authorizations'][:value]
        end
       
     
       
        
        #<b>summary</b>: List of HealthVault vocabularies that the child applications of this application can be configured to have access to.
#<b>remarks</b>: If unspecified the access is limited to all publically available vocabularies in the HealthVault platform.
#<em>value</em> is a HealthVault::WCData::Vocab::VocabularyAuthorizations
        def child_vocabulary_authorizations_ceiling=(value)
          @children['child-vocabulary-authorizations-ceiling'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyAuthorizations
        def child_vocabulary_authorizations_ceiling
          return @children['child-vocabulary-authorizations-ceiling'][:value]
        end
       
     
       
        
        #<b>summary</b>: List of HealthVault methods that the application is allowed to call.
#<b>remarks</b>: Version 1 of the AddApplication and UpdateApplication methods ignore this element and configures the application with x-BaseMethods and x-UserDataExtended method groups. Version 2 of the AddApplication and UpdateApplication methods ensure the methods specified are equal to or a subset of the child-method-mask-ceiling configured for the master application.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def methods=(value)
          @children['methods'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def methods
          return @children['methods'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'appwithlogos'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::CultureSpecificString255, :value => Array.new, :min => 1, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['app-auth-required'] = {:name => 'app-auth-required', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['app-auth-required'][:value] = String.new
            
          
        
          
          @children['is-published'] = {:name => 'is-published', :class => String, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['is-published'][:value] = String.new
            
          
        
          
          @children['action-url'] = {:name => 'action-url', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['description'] = {:name => 'description', :class => HealthVault::WCData::Types::CultureSpecificString, :value => Array.new, :min => 0, :max => 999999, :order => 6, :place => :element, :choice => 0 }
          
        
          
          @children['auth-reason'] = {:name => 'auth-reason', :class => HealthVault::WCData::Types::CultureSpecificString, :value => Array.new, :min => 0, :max => 999999, :order => 7, :place => :element, :choice => 0 }
          
        
          
          @children['domain-name'] = {:name => 'domain-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['client-service-token'] = {:name => 'client-service-token', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['large-logo'] = {:name => 'large-logo', :class => HealthVault::WCData::Application::AppLargeLogoInfo, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
          
          @children['small-logo'] = {:name => 'small-logo', :class => HealthVault::WCData::Application::AppSmallLogoInfo, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['persistent-tokens'] = {:name => 'persistent-tokens', :class => HealthVault::WCData::Application::AppPersistentTokens, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
          
          @children['person-online-base-auth-xml'] = {:name => 'person-online-base-auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 1, :max => 1, :order => 13, :place => :element, :choice => 0 }
            
          @children['person-online-base-auth-xml'][:value] = HealthVault::WCData::Auth::AuthXml.new
            
          
        
          
          @children['person-offline-base-auth-xml'] = {:name => 'person-offline-base-auth-xml', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 14, :place => :element, :choice => 0 }
            
          
        
          
          @children['privacy-statement'] = {:name => 'privacy-statement', :class => HealthVault::WCData::Application::StatementInfo, :value => nil, :min => 0, :max => 1, :order => 15, :place => :element, :choice => 0 }
            
          
        
          
          @children['terms-of-use'] = {:name => 'terms-of-use', :class => HealthVault::WCData::Application::StatementInfo, :value => nil, :min => 0, :max => 1, :order => 16, :place => :element, :choice => 0 }
            
          
        
          
          @children['dtc-success-message'] = {:name => 'dtc-success-message', :class => HealthVault::WCData::Application::StatementInfo, :value => nil, :min => 0, :max => 1, :order => 17, :place => :element, :choice => 0 }
            
          
        
          
          @children['app-attributes'] = {:name => 'app-attributes', :class => HealthVault::WCData::Application::ApplicationAttributes, :value => nil, :min => 0, :max => 1, :order => 18, :place => :element, :choice => 0 }
            
          
        
          
          @children['app-type'] = {:name => 'app-type', :class => HealthVault::WCData::Types::String32, :value => nil, :min => 1, :max => 1, :order => 19, :place => :element, :choice => 0 }
            
          @children['app-type'][:value] = HealthVault::WCData::Types::String32.new
            
          
        
          
          @children['master-app-id'] = {:name => 'master-app-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 20, :place => :element, :choice => 0 }
            
          
        
          
          @children['master-app-name'] = {:name => 'master-app-name', :class => HealthVault::WCData::Types::CultureSpecificString255, :value => nil, :min => 0, :max => 1, :order => 21, :place => :element, :choice => 0 }
            
          
        
          
          @children['created-date'] = {:name => 'created-date', :class => String, :value => nil, :min => 0, :max => 1, :order => 22, :place => :element, :choice => 0 }
            
          
        
          
          @children['updated-date'] = {:name => 'updated-date', :class => String, :value => nil, :min => 0, :max => 1, :order => 23, :place => :element, :choice => 0 }
            
          
        
          
          @children['valid-ip-prefixes'] = {:name => 'valid-ip-prefixes', :class => HealthVault::WCData::Types::String255nw, :value => nil, :min => 0, :max => 1, :order => 24, :place => :element, :choice => 0 }
            
          
        
          
          @children['vocabulary-authorizations'] = {:name => 'vocabulary-authorizations', :class => HealthVault::WCData::Vocab::VocabularyAuthorizations, :value => nil, :min => 0, :max => 1, :order => 25, :place => :element, :choice => 0 }
            
          
        
          
          @children['child-vocabulary-authorizations-ceiling'] = {:name => 'child-vocabulary-authorizations-ceiling', :class => HealthVault::WCData::Vocab::VocabularyAuthorizations, :value => nil, :min => 0, :max => 1, :order => 26, :place => :element, :choice => 0 }
            
          
        
          
          @children['methods'] = {:name => 'methods', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 27, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

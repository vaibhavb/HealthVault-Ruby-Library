module HealthVault
  module WCData
  module Methods
  module AddApplication
  
      class Info < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificString255
        def add_name(value)
          @children['name'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificString255
        def remove_name(value)
            @children['name'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The application name.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificString255 Array
        def name
          return @children['name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The X509 certificate to be used in conjunction with the application id to uniquely identify the application to HealthVault.
#<b>remarks</b>: This value should be the hexadecimal representation of the entire X509 certificate, excluding the private key. The easiest way to get this value is to take the binary value of a .cer file as a hexadecimal. It is extremely important that the private key that cooresponds to this public key should be secured both physically and electronically so that other applications cannot identify themselves the application being added.
#<em>value</em> is a HealthVault::WCData::Application::PublicKeys
        def public_keys=(value)
          @children['public-keys'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::PublicKeys
        def public_keys
          return @children['public-keys'][:value]
        end
       
     
       
        
        #<b>summary</b>: The list of data types (with corresponding permissions) that the application can access to while the person is logged in and using the application.
#<b>remarks</b>: This set of authorization rules must be a subset of the calling application's authorization rule set. If not, an INVALID_APPAUTH error will be returned.
#<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def person_online_base_auth=(value)
          @children['person-online-base-auth'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def person_online_base_auth
          return @children['person-online-base-auth'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The list of data types (with corresponding permissions) that the application can access at any time.
#<b>remarks</b>: This set of authorization rules must be a subset of the calling application's authorization rule set. If not, an INVALID_APPAUTH error will be returned.
#<em>value</em> is a HealthVault::WCData::Auth::AuthXml
        def person_offline_base_auth=(value)
          @children['person-offline-base-auth'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::AuthXml
        def person_offline_base_auth
          return @children['person-offline-base-auth'][:value]
        end
       
     
       
        
        #<b>summary</b>: List of HealthVault methods that the application is allowed to call.
#<b>remarks</b>: Version 1 of the AddApplication ignores this element and configures the application with x-BaseMethods and x-UserDataExtended method groups. Version 2 of the AddApplication ensures the methods specified are equal to or a subset of the child-method-mask-ceiling configured for the master application.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def methods=(value)
          @children['methods'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def methods
          return @children['methods'][:value]
        end
       
     
       
        
        #<b>summary</b>: A single url used by HealthVault with different query string parameters to make specific requests to an online application.
#<b>remarks</b>: Since an application must have both a privacy statement and a terms of use statement, you must supply one of the following: 1. An action url. 2. Both the privacy statement and terms of use (see the "privacy-statement" and "terms-of-use" parameters). If the above condition is not met, an INVALID_XML error will be returned. Exceptions include HIPAA applications specified using the app-attributes element below. HIPAA applications do not require an action url, privacy statement, or terms of use.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def action_url=(value)
          @children['action-url'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def action_url
          return @children['action-url'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificStringnz
        def add_description(value)
          @children['description'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificStringnz
        def remove_description(value)
            @children['description'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: A high level description about what the application does.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificStringnz Array
        def description
          return @children['description'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::CultureSpecificStringnz
        def add_auth_reason(value)
          @children['auth-reason'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::CultureSpecificStringnz
        def remove_auth_reason(value)
            @children['auth-reason'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>summary</b>: The reason why the application requires the requested permissions to the various data types.
#<b>returns</b>: a HealthVault::WCData::Types::CultureSpecificStringnz Array
        def auth_reason
          return @children['auth-reason'][:value]
        end
       
     
       
        
        #<b>summary</b>: The domain name from which emails sent on behalf of the application will originate from.
#<b>remarks</b>: For example, if the domain name supplied was 'myapp.com', the application would call SendInsecureMessageFromApplication with a mailbox-name 'mailbox', and the recipient would receive an email from mailbox@myapp.com. Currently not supported. The list of methods that the application is given access to by default does not contain any of the methods for sending email.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def domain_name=(value)
          @children['domain-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def domain_name
          return @children['domain-name'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The application's logo as a base64 encoded string and its corresponding content type.
#<b>remarks</b>: The large logo can be up to 120 pixels wide, 60 pixels high, and 160kb in size.
#<em>value</em> is a HealthVault::WCData::Application::AppLargeLogoInfo
        def large_logo=(value)
          @children['large-logo'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppLargeLogoInfo
        def large_logo
          return @children['large-logo'][:value]
        end
       
     
       
        
        #<b>summary</b>: The application's logo as a base64 encoded string and its corresponding content type.
#<b>remarks</b>: The small logo can be up to 40kb in size.
#<em>value</em> is a HealthVault::WCData::Application::AppSmallLogoInfo
        def small_logo=(value)
          @children['small-logo'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppSmallLogoInfo
        def small_logo
          return @children['small-logo'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies whether the application requires using persistent tokens and the duration to persist the tokens for (in seconds)
#<b>remarks</b>: A persistent token is an encrypted identifier for the user and application. It can be used to enable the "Keep me signed in on this computer" feature in HealthVault.
#<em>value</em> is a HealthVault::WCData::Application::AppPersistentTokens
        def persistent_tokens=(value)
          @children['persistent-tokens'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Application::AppPersistentTokens
        def persistent_tokens
          return @children['persistent-tokens'][:value]
        end
       
     
       
        
        #<b>summary</b>: The category used to classify the application.
#<b>remarks</b>: Currently not used by HealthVault.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def app_type=(value)
          @children['app-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def app_type
          return @children['app-type'][:value]
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
       
     
       
        
        #<b>summary</b>: Specifies whether the application needs to authenticate the user.
#<b>remarks</b>: For example, if the application charged a subscription fee for its use, this parameter would need to be true so that the application can verify that the user has in fact paid for the usage before logging him/her in. Currently not supported.
#<em>value</em> is a String
        def app_auth_required=(value)
          @children['app-auth-required'][:value] = value
        end
        
        #<b>returns</b>: a String
        def app_auth_required
          return @children['app-auth-required'][:value]
        end
       
     
       
        
        #<b>summary</b>: Currently not supported.
#<b>remarks</b>: Currently not supported.
#<em>value</em> is a String
        def is_published=(value)
          @children['is-published'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_published
          return @children['is-published'][:value]
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
       
     
       
        
        #<b>summary</b>: A set of restricted vocabularies that the application is allowed to call.
#<b>remarks</b>: HealthVault provides access to a base set of publically available vocabularies. Certain vocabularies are however restricted to a target application audience. These vocabularies are only available to the application if they are explicitly set via this field. AddApplication ensures the vocabularies specified are equal to or a subset of the child-authorized-vocabularies-ceiling configured for the master application.
#<em>value</em> is a HealthVault::WCData::Vocab::VocabularyAuthorizations
        def vocabulary_authorizations=(value)
          @children['vocabulary-authorizations'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Vocab::VocabularyAuthorizations
        def vocabulary_authorizations
          return @children['vocabulary-authorizations'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['name'] = {:name => 'name', :class => HealthVault::WCData::Types::CultureSpecificString255, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['public-keys'] = {:name => 'public-keys', :class => HealthVault::WCData::Application::PublicKeys, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['public-keys'][:value] = HealthVault::WCData::Application::PublicKeys.new
            
          
        
          
          @children['person-online-base-auth'] = {:name => 'person-online-base-auth', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['person-offline-base-auth'] = {:name => 'person-offline-base-auth', :class => HealthVault::WCData::Auth::AuthXml, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['person-offline-base-auth'][:value] = HealthVault::WCData::Auth::AuthXml.new
            
          
        
          
          @children['methods'] = {:name => 'methods', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['action-url'] = {:name => 'action-url', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['description'] = {:name => 'description', :class => HealthVault::WCData::Types::CultureSpecificStringnz, :value => Array.new, :min => 1, :max => 999999, :order => 7, :place => :element, :choice => 0 }
          
        
          
          @children['auth-reason'] = {:name => 'auth-reason', :class => HealthVault::WCData::Types::CultureSpecificStringnz, :value => Array.new, :min => 1, :max => 999999, :order => 8, :place => :element, :choice => 0 }
          
        
          
          @children['domain-name'] = {:name => 'domain-name', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['large-logo'] = {:name => 'large-logo', :class => HealthVault::WCData::Application::AppLargeLogoInfo, :value => nil, :min => 1, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          @children['large-logo'][:value] = HealthVault::WCData::Application::AppLargeLogoInfo.new
            
          
        
          
          @children['small-logo'] = {:name => 'small-logo', :class => HealthVault::WCData::Application::AppSmallLogoInfo, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['persistent-tokens'] = {:name => 'persistent-tokens', :class => HealthVault::WCData::Application::AppPersistentTokens, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
          
          @children['app-type'] = {:name => 'app-type', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 13, :place => :element, :choice => 0 }
            
          
        
          
          @children['privacy-statement'] = {:name => 'privacy-statement', :class => HealthVault::WCData::Application::StatementInfo, :value => nil, :min => 0, :max => 1, :order => 14, :place => :element, :choice => 0 }
            
          
        
          
          @children['terms-of-use'] = {:name => 'terms-of-use', :class => HealthVault::WCData::Application::StatementInfo, :value => nil, :min => 0, :max => 1, :order => 15, :place => :element, :choice => 0 }
            
          
        
          
          @children['app-auth-required'] = {:name => 'app-auth-required', :class => String, :value => nil, :min => 0, :max => 1, :order => 16, :place => :element, :choice => 0 }
            
          
        
          
          @children['is-published'] = {:name => 'is-published', :class => String, :value => nil, :min => 0, :max => 1, :order => 17, :place => :element, :choice => 0 }
            
          
        
          
          @children['dtc-success-message'] = {:name => 'dtc-success-message', :class => HealthVault::WCData::Application::StatementInfo, :value => nil, :min => 0, :max => 1, :order => 18, :place => :element, :choice => 0 }
            
          
        
          
          @children['app-attributes'] = {:name => 'app-attributes', :class => HealthVault::WCData::Application::ApplicationAttributes, :value => nil, :min => 0, :max => 1, :order => 19, :place => :element, :choice => 0 }
            
          
        
          
          @children['valid-ip-prefixes'] = {:name => 'valid-ip-prefixes', :class => HealthVault::WCData::Types::String255nw, :value => nil, :min => 0, :max => 1, :order => 20, :place => :element, :choice => 0 }
            
          
        
          
          @children['vocabulary-authorizations'] = {:name => 'vocabulary-authorizations', :class => HealthVault::WCData::Vocab::VocabularyAuthorizations, :value => nil, :min => 0, :max => 1, :order => 21, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

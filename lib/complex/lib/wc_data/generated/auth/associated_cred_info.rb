module HealthVault
  module WCData
  module Auth
  
      class AssociatedCredInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A simple credential encrypted.
#<b>remarks</b>: This opaque credential is returned by the create credential calls. It represents the original authenticating credential.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def simple_encrypted=(value)
          @children['simple-encrypted'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def simple_encrypted
          return @children['simple-encrypted'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A simple user credential that authenticates a user in Microsoft HealthVault.
#<b>remarks</b>: Each user has a unique username and associated password that identifies and authenticates a Microsoft HealthVault user.
#<em>value</em> is a HealthVault::WCData::Auth::UserPassCred
        def simple_userpass=(value)
          @children['simple-userpass'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::UserPassCred
        def simple_userpass
          return @children['simple-userpass'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: A credential for verifying identity with Microsoft Passport.
#<em>value</em> is a HealthVault::WCData::Auth::SimplePassportCredential
        def simple_passport=(value)
          @children['simple-passport'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimplePassportCredential
        def simple_passport
          return @children['simple-passport'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Represents the confirmed claimed id of a user who has been authenticated to an Open Id Provider.
#<em>value</em> is a HealthVault::WCData::Auth::SimpleOpenIdCredential
        def simple_openid=(value)
          @children['simple-openid'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimpleOpenIdCredential
        def simple_openid
          return @children['simple-openid'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Represents the confirmed user-id of a user who has been authenticated to the Facebook Service.
#<em>value</em> is a HealthVault::WCData::Auth::SimpleFacebookCredential
        def simple_facebook=(value)
          @children['simple-facebook'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimpleFacebookCredential
        def simple_facebook
          return @children['simple-facebook'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Represents emergency access to a record.
#<em>value</em> is a HealthVault::WCData::Auth::SimpleEmergencyAccessCredential
        def simple_emergency_access=(value)
          @children['simple-emergency-access'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimpleEmergencyAccessCredential
        def simple_emergency_access
          return @children['simple-emergency-access'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: This credential type is used for two factor authentication by phone.
#<em>value</em> is a HealthVault::WCData::Auth::SimplePhoneFactorCredential
        def simple_phone_factor=(value)
          @children['simple-phone-factor'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Auth::SimplePhoneFactorCredential
        def simple_phone_factor
          return @children['simple-phone-factor'][:value]
        end
       
     
       
        
        #<b>summary</b>: Meta-data associated with the credential that is used by Microsoft HealthVault.
#<b>remarks</b>: An example of a meta datum is the description of the associated credential.
#<em>value</em> is a HealthVault::WCData::Types::Stringnz
        def credential_metadata=(value)
          @children['credential-metadata'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringnz
        def credential_metadata
          return @children['credential-metadata'][:value]
        end
       
     
       
        
        #<b>summary</b>: The credential name is used to identify the credential to the end user.
#<em>value</em> is a HealthVault::WCData::Types::String64
        def credential_name=(value)
          @children['credential-name'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String64
        def credential_name
          return @children['credential-name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date this credential was created.
#<em>value</em> is a String
        def date_created=(value)
          @children['date-created'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_created
          return @children['date-created'][:value]
        end
       
     
       
        
        #<b>summary</b>: The date this was last used to authenticate.
#<em>value</em> is a String
        def date_last_used=(value)
          @children['date-last-used'][:value] = value
        end
        
        #<b>returns</b>: a String
        def date_last_used
          return @children['date-last-used'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'associatedcredinfo'
        
          
          @children['simple-encrypted'] = {:name => 'simple-encrypted', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['simple-userpass'] = {:name => 'simple-userpass', :class => HealthVault::WCData::Auth::UserPassCred, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['simple-passport'] = {:name => 'simple-passport', :class => HealthVault::WCData::Auth::SimplePassportCredential, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['simple-openid'] = {:name => 'simple-openid', :class => HealthVault::WCData::Auth::SimpleOpenIdCredential, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['simple-facebook'] = {:name => 'simple-facebook', :class => HealthVault::WCData::Auth::SimpleFacebookCredential, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['simple-emergency-access'] = {:name => 'simple-emergency-access', :class => HealthVault::WCData::Auth::SimpleEmergencyAccessCredential, :value => nil, :min => 1, :max => 1, :order => 6, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['simple-phone-factor'] = {:name => 'simple-phone-factor', :class => HealthVault::WCData::Auth::SimplePhoneFactorCredential, :value => nil, :min => 1, :max => 1, :order => 7, :place => :element, :choice => 456776222 }
            
          
        
          
          @children['credential-metadata'] = {:name => 'credential-metadata', :class => HealthVault::WCData::Types::Stringnz, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['credential-name'] = {:name => 'credential-name', :class => HealthVault::WCData::Types::String64, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-created'] = {:name => 'date-created', :class => String, :value => nil, :min => 0, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          
        
          
          @children['date-last-used'] = {:name => 'date-last-used', :class => String, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

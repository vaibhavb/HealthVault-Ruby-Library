module HealthVault
  module WCData
  module Methods
  module SaveOpenQuery
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: Optional. Time in minutes from open query creation until this open query expires. Expired open queries no longer exists in the system, and don't need an explicit call to DeleteOpenQuery to remove them.
#<em>value</em> is a String
        def expires=(value)
          @children['expires'][:value] = value
        end
        
        #<b>returns</b>: a String
        def expires
          return @children['expires'][:value]
        end
       
     
       
        
        #<b>summary</b>: Optional PIN to protect this open query from unauthorized access.
#<em>value</em> is a HealthVault::WCData::Types::String128
        def pin_code=(value)
          @children['pin-code'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128
        def pin_code
          return @children['pin-code'][:value]
        end
       
     
       
        
        #<b>summary</b>: Optional note attached to this open query.
#<em>value</em> is a HealthVault::WCData::Types::String128
        def note=(value)
          @children['note'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String128
        def note
          return @children['note'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The name of the method the open query will call.
#<b>remarks</b>: Currently the only supported request method of a saved query is GetThings. Attempting to save queries for other methods will result in the INVALID_OPENQUERY error.
#<em>value</em> is a String
        def method=(value)
          @children['method'][:value] = value
        end
        
        #<b>returns</b>: a String
        def method
          return @children['method'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The version of the method the open query will call.
#<em>value</em> is a String
        def method_version=(value)
          @children['method-version'][:value] = value
        end
        
        #<b>returns</b>: a String
        def method_version
          return @children['method-version'][:value]
        end
       
     
       
        
        #<b>summary</b>: The unique identifier for the health record that the open query will run against.
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def record_id=(value)
          @children['record-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def record_id
          return @children['record-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: The language that will be used for any localizable strings or data when the open query is run.
#<em>value</em> is a HealthVault::WCData::Types::Iso6391
        def language=(value)
          @children['language'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso6391
        def language
          return @children['language'][:value]
        end
       
     
       
        
        #<b>summary</b>: The country that will be used for any localizable strings or data when open query is run.
#<em>value</em> is a HealthVault::WCData::Types::Iso3166
        def country=(value)
          @children['country'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso3166
        def country
          return @children['country'][:value]
        end
       
     
       
        
        #<b>summary</b>: The XSL used for transforming the results.
#<b>remarks</b>: If this parameter is specified the resulting XML will be transformed using this XSL to produce the final response that will be sent to the caller.
#<em>value</em> is a String
        def final_xsl=(value)
          @children['final-xsl'][:value] = value
        end
        
        #<b>returns</b>: a String
        def final_xsl
          return @children['final-xsl'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The request XML that will be sent to Microsoft HealthVault when the open query is run.
#<b>remarks</b>: This XML is not modified by the SaveOpenQuery or method processor or the open query handler.
#<em>value</em> is a HealthVault::WCData::Request::Info
        def info=(value)
          @children['info'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Request::Info
        def info
          return @children['info'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['expires'] = {:name => 'expires', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['pin-code'] = {:name => 'pin-code', :class => HealthVault::WCData::Types::String128, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['note'] = {:name => 'note', :class => HealthVault::WCData::Types::String128, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['method'] = {:name => 'method', :class => String, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['method'][:value] = String.new
            
          
        
          
          @children['method-version'] = {:name => 'method-version', :class => String, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['method-version'][:value] = String.new
            
          
        
          
          @children['record-id'] = {:name => 'record-id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['language'] = {:name => 'language', :class => HealthVault::WCData::Types::Iso6391, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['country'] = {:name => 'country', :class => HealthVault::WCData::Types::Iso3166, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['final-xsl'] = {:name => 'final-xsl', :class => String, :value => nil, :min => 0, :max => 1, :order => 9, :place => :element, :choice => 0 }
            
          
        
          
          @children['info'] = {:name => 'info', :class => HealthVault::WCData::Request::Info, :value => nil, :min => 1, :max => 1, :order => 10, :place => :element, :choice => 0 }
            
          @children['info'][:value] = HealthVault::WCData::Request::Info.new
            
          
        
        end
      end
  end
  end
  
  end
end

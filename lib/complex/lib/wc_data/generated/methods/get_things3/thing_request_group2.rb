module HealthVault
  module WCData
  module Methods
  module GetThings3
  
      class ThingRequestGroup2 < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Types::Guid
        def add_id(value)
          @children['id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::Guid
        def remove_id(value)
            @children['id'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Specifies thing ids that need to be returned.
#<b>returns</b>: a HealthVault::WCData::Types::Guid Array
        def id
          return @children['id'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::ThingKey
        def add_key(value)
          @children['key'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::ThingKey
        def remove_key(value)
            @children['key'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Specifies keys of things that need to be returned.
#<b>returns</b>: a HealthVault::WCData::Thing::ThingKey Array
        def key
          return @children['key'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def add_client_thing_id(value)
          @children['client-thing-id'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Types::String255
        def remove_client_thing_id(value)
            @children['client-thing-id'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Specifies client assigned ids of things that need to be returned.
#<b>returns</b>: a HealthVault::WCData::Types::String255 Array
        def client_thing_id
          return @children['client-thing-id'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::GetThings::ThingFilterSpec
        def add_filter(value)
          @children['filter'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::GetThings::ThingFilterSpec
        def remove_filter(value)
            @children['filter'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Specifies a filter for things to be retrieved based on the properties of the thing.
#<b>returns</b>: a HealthVault::WCData::Methods::GetThings::ThingFilterSpec Array
        def filter
          return @children['filter'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Specifies a view for the results.
#<em>value</em> is a HealthVault::WCData::Methods::GetThings3::ThingFormatSpec2
        def format=(value)
          @children['format'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::GetThings3::ThingFormatSpec2
        def format
          return @children['format'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies whether or not we should return only the current version of things that satisfy the filter.
#<b>remarks</b>: This is true by default. If set to false all the versions of the thing are returned.
#<em>value</em> is a String
        def current_version_only=(value)
          @children['current-version-only'][:value] = value
        end
        
        #<b>returns</b>: a String
        def current_version_only
          return @children['current-version-only'][:value]
        end
       
     
       
        
        #<b>summary</b>: Name of this request group.
#<b>remarks</b>: This is used to distinguish this group from other groups that are specified as part of this same search.
#<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
     
       
        
        #<b>summary</b>: The maximum number of items to be returned for this group.
#<em>value</em> is a String
        def max=(value)
          @children['max'][:value] = value
        end
        
        #<b>returns</b>: a String
        def max
          return @children['max'][:value]
        end
       
     
       
        
        #<b>summary</b>: Maximum number of "full" items to be returned for this group.
#<b>remarks</b>: For each request, the server might set a maximum number for complete things that might be returned. Past this maximum, the server will return the list of thing-ids of the results. To retrieve the things represented by these ids, additional GetThings calls can be made with these thing ids supplied in the ThingRequestGroup.
#<em>value</em> is a String
        def max_full=(value)
          @children['max-full'][:value] = value
        end
        
        #<b>returns</b>: a String
        def max_full
          return @children['max-full'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingrequestgroup2'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 501342686 }
          
        
          
          @children['key'] = {:name => 'key', :class => HealthVault::WCData::Thing::ThingKey, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 501342686 }
          
        
          
          @children['client-thing-id'] = {:name => 'client-thing-id', :class => HealthVault::WCData::Types::String255, :value => Array.new, :min => 0, :max => 999999, :order => 3, :place => :element, :choice => 501342686 }
          
        
          
          @children['filter'] = {:name => 'filter', :class => HealthVault::WCData::Methods::GetThings::ThingFilterSpec, :value => Array.new, :min => 0, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['format'] = {:name => 'format', :class => HealthVault::WCData::Methods::GetThings3::ThingFormatSpec2, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['format'][:value] = HealthVault::WCData::Methods::GetThings3::ThingFormatSpec2.new
            
          
        
          
          @children['current-version-only'] = {:name => 'current-version-only', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['max'] = {:name => 'max', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
          
          @children['max-full'] = {:name => 'max-full', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

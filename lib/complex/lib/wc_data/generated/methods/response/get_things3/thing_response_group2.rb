module HealthVault
  module WCData
  module Methods
  module Response
  module GetThings3
  
      class ThingResponseGroup2 < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Thing2
        def add_thing(value)
          @children['thing'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Thing2
        def remove_thing(value)
            @children['thing'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The things that satisfied the criteria in the filter group of the request.
#<b>remarks</b>: The things returned here might be a partial list. The server will return a list of things up to a maximum based on server configuration. The unprocessed-thing-key-info element will contain additional things in partial form. To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
#<b>returns</b>: a HealthVault::WCData::Thing::Thing2 Array
        def thing
          return @children['thing'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::UnprocessedThingKeyInfo
        def add_unprocessed_thing_key_info(value)
          @children['unprocessed-thing-key-info'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::UnprocessedThingKeyInfo
        def remove_unprocessed_thing_key_info(value)
            @children['unprocessed-thing-key-info'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Additional things that satisfied the criteria in the filter group of the request but are returned in partial form, including the thing id and thing type.
#<b>remarks</b>: To retrieve the things in full form, the thing ids can be specified in the filter group of additional GetThing methods requests.
#<b>returns</b>: a HealthVault::WCData::Thing::UnprocessedThingKeyInfo Array
        def unprocessed_thing_key_info
          return @children['unprocessed-thing-key-info'][:value]
        end
       
     
       
        
        #<b>summary</b>: Indicates whether some of the things were filtered.
#<b>remarks</b>: Thing may be filtered because of security settings on the record.
#<em>value</em> is a String
        def filtered=(value)
          @children['filtered'][:value] = value
        end
        
        #<b>returns</b>: a String
        def filtered
          return @children['filtered'][:value]
        end
       
     
       
        
        #<b>summary</b>: Name of the group.
#<b>remarks</b>: This name is identical to the name sent in the request for this group.
#<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingresponsegroup2'
        
          
          @children['thing'] = {:name => 'thing', :class => HealthVault::WCData::Thing::Thing2, :value => Array.new, :min => 0, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['unprocessed-thing-key-info'] = {:name => 'unprocessed-thing-key-info', :class => HealthVault::WCData::Thing::UnprocessedThingKeyInfo, :value => Array.new, :min => 0, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
          
          @children['filtered'] = {:name => 'filtered', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 0, :max => 1, :order => 0, :place => :attribute, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

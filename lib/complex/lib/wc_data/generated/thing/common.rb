module HealthVault
  module WCData
  module Thing
  
      class Common < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def source=(value)
          @children['source'][:value] = value
        end
        
        #<b>returns</b>: a String
        def source
          return @children['source'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def note=(value)
          @children['note'][:value] = value
        end
        
        #<b>returns</b>: a String
        def note
          return @children['note'][:value]
        end
       
     
       
        
        #<em>value</em> is a HealthVault::WCData::Types::Stringz512
        def tags=(value)
          @children['tags'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Stringz512
        def tags
          return @children['tags'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::Extension
        def add_extension(value)
          @children['extension'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::Extension
        def remove_extension(value)
            @children['extension'][:value].delete(value)
        end
        
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Extension Array
        def extension
          return @children['extension'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Thing::RelatedThing
        def add_related_thing(value)
          @children['related-thing'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Thing::RelatedThing
        def remove_related_thing(value)
            @children['related-thing'][:value].delete(value)
        end
        
        
        #<b>summary</b>: Defines a loose relationship between instances of things within a record.
#<b>remarks</b>: This relationship is completely application defined and maintained. HealthVault does nothing to ensure that related things exist or have a relationship back to this thing. An example usage for related-things are to use an annotation thing instance to make medical annotations for another thing type or to relate a file instance (like an MRI) to problem instance.
#<b>returns</b>: a HealthVault::WCData::Thing::RelatedThing Array
        def related_thing
          return @children['related-thing'][:value]
        end
       
     
       
        
        #<b>summary</b>: A client assigned friendly id for the thing.
#<b>remarks</b>: This id is completely application defined and maintained. HealthVault does nothing to ensure that the ids assigned are unique.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def client_thing_id=(value)
          @children['client-thing-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def client_thing_id
          return @children['client-thing-id'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'common'
        
          
          @children['source'] = {:name => 'source', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['note'] = {:name => 'note', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['tags'] = {:name => 'tags', :class => HealthVault::WCData::Types::Stringz512, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['extension'] = {:name => 'extension', :class => HealthVault::WCData::Thing::Extension, :value => Array.new, :min => 0, :max => 999999, :order => 4, :place => :element, :choice => 0 }
          
        
          
          @children['related-thing'] = {:name => 'related-thing', :class => HealthVault::WCData::Thing::RelatedThing, :value => Array.new, :min => 0, :max => 999999, :order => 5, :place => :element, :choice => 0 }
          
        
          
          @children['client-thing-id'] = {:name => 'client-thing-id', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

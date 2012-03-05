module HealthVault
  module WCData
  module Thing
  
      class RelatedThing < ComplexType
        
     
       
        
        #<b>summary</b>: A string representing client id of the thing instance that this thing is related to.
#<em>value</em> is a HealthVault::WCData::Types::String255
        def client_thing_id=(value)
          @children['client-thing-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def client_thing_id
          return @children['client-thing-id'][:value]
        end
       
     
       
        
        #<b>summary</b>: A string representing the type of relationship between the two thing instances.
#<b>remarks</b>: A relationship between thing instances may be made for many reasons. For example, an annotation instance may be a medical annotation for a problem instance in which case the "relationship-type" may be set to "annotation".
#<em>value</em> is a String
        def relationship_type=(value)
          @children['relationship-type'][:value] = value
        end
        
        #<b>returns</b>: a String
        def relationship_type
          return @children['relationship-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'relatedthing'
        
          
          @children['client-thing-id'] = {:name => 'client-thing-id', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 190450393 }
            
          
        
          
          @children['relationship-type'] = {:name => 'relationship-type', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  
  end
end

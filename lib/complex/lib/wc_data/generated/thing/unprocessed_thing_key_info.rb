module HealthVault
  module WCData
  module Thing
  
      class UnprocessedThingKeyInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The unique identifier for the thing.
#<em>value</em> is a HealthVault::WCData::Thing::ThingKey
        def thing_id=(value)
          @children['thing-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::ThingKey
        def thing_id
          return @children['thing-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The type of the thing.
#<b>remarks</b>: The list of things types can be queried through the Dictionary.
#<em>value</em> is a HealthVault::WCData::Thing::ThingType
        def type_id=(value)
          @children['type-id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::ThingType
        def type_id
          return @children['type-id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The effective date for the thing.
#<b>remarks</b>: The relevant time for a thing. If this was a weight measurement, the effective time refers to the date the weight was taken, not when it was stored.
#<em>value</em> is a String
        def eff_date=(value)
          @children['eff-date'][:value] = value
        end
        
        #<b>returns</b>: a String
        def eff_date
          return @children['eff-date'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'unprocessedthingkeyinfo'
        
          
          @children['thing-id'] = {:name => 'thing-id', :class => HealthVault::WCData::Thing::ThingKey, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['thing-id'][:value] = HealthVault::WCData::Thing::ThingKey.new
            
          
        
          
          @children['type-id'] = {:name => 'type-id', :class => HealthVault::WCData::Thing::ThingType, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['type-id'][:value] = HealthVault::WCData::Thing::ThingType.new
            
          
        
          
          @children['eff-date'] = {:name => 'eff-date', :class => String, :value => nil, :min => 1, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          @children['eff-date'][:value] = String.new
            
          
        
        end
      end
  end
  
  end
end

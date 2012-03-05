

module HealthVault
  module WCData
  module Types
  
      class Address < ComplexType
        
     
       
        
        #<em>value</em> is a String
        def description=(value)
          @children['description'][:value] = value
        end
        
        #<b>returns</b>: a String
        def description
          return @children['description'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def is_primary=(value)
          @children['is-primary'][:value] = value
        end
        
        #<b>returns</b>: a String
        def is_primary
          return @children['is-primary'][:value]
        end
       
     
       
        #<em>value</em> is a String
        def add_street(value)
          @children['street'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_street(value)
            @children['street'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a String Array
        def street
          return @children['street'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def city=(value)
          @children['city'][:value] = value
        end
        
        #<b>returns</b>: a String
        def city
          return @children['city'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a String
        def state=(value)
          @children['state'][:value] = value
        end
        
        #<b>returns</b>: a String
        def state
          return @children['state'][:value]
        end
       
     
       
        
        #<em>value</em> is a String
        def postcode=(value)
          @children['postcode'][:value] = value
        end
        
        #<b>returns</b>: a String
        def postcode
          return @children['postcode'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::Iso3166
        def country=(value)
          @children['country'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Iso3166
        def country
          return @children['country'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'address'
        
          
          @children['description'] = {:name => 'description', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
          
          @children['is-primary'] = {:name => 'is-primary', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['street'] = {:name => 'street', :class => String, :value => Array.new, :min => 1, :max => 999999, :order => 3, :place => :element, :choice => 0 }
          
        
          
          @children['city'] = {:name => 'city', :class => String, :value => nil, :min => 1, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          @children['city'][:value] = String.new
            
          
        
          
          @children['state'] = {:name => 'state', :class => String, :value => nil, :min => 1, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          @children['state'][:value] = String.new
            
          
        
          
          @children['postcode'] = {:name => 'postcode', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['country'] = {:name => 'country', :class => HealthVault::WCData::Types::Iso3166, :value => nil, :min => 1, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          @children['country'][:value] = HealthVault::WCData::Types::Iso3166.new
            
          
        
        end
      end
  end
  
  end
end

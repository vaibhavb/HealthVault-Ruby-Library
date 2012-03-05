module HealthVault
  module WCData
  module Methods
  module Response
  module GetThingType
  
      class ThingTypeInfo < ComplexType
        
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Unique thing type identifier
#<em>value</em> is a HealthVault::WCData::Types::Guid
        def id=(value)
          @children['id'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guid
        def id
          return @children['id'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<b>summary</b>: Friendly name
#<em>value</em> is a String
        def name=(value)
          @children['name'][:value] = value
        end
        
        #<b>returns</b>: a String
        def name
          return @children['name'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies whether the thing type can be created or not
#<em>value</em> is a String
        def uncreatable=(value)
          @children['uncreatable'][:value] = value
        end
        
        #<b>returns</b>: a String
        def uncreatable
          return @children['uncreatable'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies whether the thing type can be updated or not
#<em>value</em> is a String
        def immutable=(value)
          @children['immutable'][:value] = value
        end
        
        #<b>returns</b>: a String
        def immutable
          return @children['immutable'][:value]
        end
       
     
       
        
        #<b>summary</b>: Specifies whether the thing type is a singleton
#<em>value</em> is a String
        def singleton=(value)
          @children['singleton'][:value] = value
        end
        
        #<b>returns</b>: a String
        def singleton
          return @children['singleton'][:value]
        end
       
     
       
        
        #<b>summary</b>: xsd schema describing a thing type
#<em>value</em> is a String
        def xsd=(value)
          @children['xsd'][:value] = value
        end
        
        #<b>returns</b>: a String
        def xsd
          return @children['xsd'][:value]
        end
       
     
       
        
        #<b>summary</b>: Display columns defined for the thing type
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::Columns
        def columns=(value)
          @children['columns'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::Columns
        def columns
          return @children['columns'][:value]
        end
       
     
       
        
        #<b>summary</b>: Transforms defined for this thing type
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::Transforms
        def transforms=(value)
          @children['transforms'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::Transforms
        def transforms
          return @children['transforms'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::TransformSource
        def add_transform_source(value)
          @children['transform-source'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetThingType::TransformSource
        def remove_transform_source(value)
            @children['transform-source'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The transforms and XSL source defined for this thing type.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::TransformSource Array
        def transform_source
          return @children['transform-source'][:value]
        end
       
     
       
        #<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::Image
        def add_image(value)
          @children['image'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Methods::Response::GetThingType::Image
        def remove_image(value)
            @children['image'][:value].delete(value)
        end
        
        
        #<b>summary</b>: The requested images that the thing type supports.
#<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::Image Array
        def image
          return @children['image'][:value]
        end
       
     
       
        
        #<b>summary</b>: The collection of all versions for a thing type.
#<em>value</em> is a HealthVault::WCData::Methods::Response::GetThingType::Versions
        def versions=(value)
          @children['versions'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Methods::Response::GetThingType::Versions
        def versions
          return @children['versions'][:value]
        end
       
     
       
        
        #<b>summary</b>: The XPath query for obtaining the effective date
#<em>value</em> is a String
        def effective_date_xpath=(value)
          @children['effective-date-xpath'][:value] = value
        end
        
        #<b>returns</b>: a String
        def effective_date_xpath
          return @children['effective-date-xpath'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'thingtypeinfo'
        
          
          @children['id'] = {:name => 'id', :class => HealthVault::WCData::Types::Guid, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['id'][:value] = HealthVault::WCData::Types::Guid.new
            
          
        
          
          @children['name'] = {:name => 'name', :class => String, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['name'][:value] = String.new
            
          
        
          
          @children['uncreatable'] = {:name => 'uncreatable', :class => String, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['immutable'] = {:name => 'immutable', :class => String, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['singleton'] = {:name => 'singleton', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['xsd'] = {:name => 'xsd', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['columns'] = {:name => 'columns', :class => HealthVault::WCData::Methods::Response::GetThingType::Columns, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['transforms'] = {:name => 'transforms', :class => HealthVault::WCData::Methods::Response::GetThingType::Transforms, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
          
          @children['transform-source'] = {:name => 'transform-source', :class => HealthVault::WCData::Methods::Response::GetThingType::TransformSource, :value => Array.new, :min => 0, :max => 999999, :order => 9, :place => :element, :choice => 0 }
          
        
          
          @children['image'] = {:name => 'image', :class => HealthVault::WCData::Methods::Response::GetThingType::Image, :value => Array.new, :min => 0, :max => 999999, :order => 10, :place => :element, :choice => 0 }
          
        
          
          @children['versions'] = {:name => 'versions', :class => HealthVault::WCData::Methods::Response::GetThingType::Versions, :value => nil, :min => 0, :max => 1, :order => 11, :place => :element, :choice => 0 }
            
          
        
          
          @children['effective-date-xpath'] = {:name => 'effective-date-xpath', :class => String, :value => nil, :min => 0, :max => 1, :order => 12, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  end
  
  end
end

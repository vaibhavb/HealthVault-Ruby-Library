module HealthVault
  module WCData
  module Application
  
      class StatementInfo < ComplexType
        
     
       
        #<em>value</em> is a HealthVault::WCData::Application::CultureSpecificStatement
        def add_statement(value)
          @children['statement'][:value] << value
        end
        
        #<em>value</em> is a #HealthVault::WCData::Application::CultureSpecificStatement
        def remove_statement(value)
            @children['statement'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a HealthVault::WCData::Application::CultureSpecificStatement Array
        def statement
          return @children['statement'][:value]
        end
       
     
       
        #<b>REQUIRED</b>
        #<em>value</em> is a HealthVault::WCData::Types::String255
        def content_type=(value)
          @children['content-type'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::String255
        def content_type
          return @children['content-type'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'statementinfo'
        
          
          @children['statement'] = {:name => 'statement', :class => HealthVault::WCData::Application::CultureSpecificStatement, :value => Array.new, :min => 1, :max => 999999, :order => 1, :place => :element, :choice => 0 }
          
        
          
          @children['content-type'] = {:name => 'content-type', :class => HealthVault::WCData::Types::String255, :value => nil, :min => 1, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          @children['content-type'][:value] = HealthVault::WCData::Types::String255.new
            
          
        
        end
      end
  end
  
  end
end

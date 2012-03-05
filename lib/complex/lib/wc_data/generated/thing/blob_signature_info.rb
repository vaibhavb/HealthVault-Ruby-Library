module HealthVault
  module WCData
  module Thing
  
      class BlobSignatureInfo < ComplexType
        
     
       
        #<em>value</em> is a String
        def add_item(value)
          @children['item'][:value] << value
        end
        
        #<em>value</em> is a #String
        def remove_item(value)
            @children['item'][:value].delete(value)
        end
        
        #<b>REQUIRED</b>
        #<b>returns</b>: a String Array
        def item
          return @children['item'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'blobsignatureinfo'
        
          
          @children['item'] = {:name => 'item', :class => String, :value => Array.new, :min => 1, :max => 999999, :order => 2, :place => :element, :choice => 0 }
          
        
        end
      end
  end
  
  end
end

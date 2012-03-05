module HealthVault
  module WCData
  module Directory
  
      class DirectoryFilterSpec < ComplexType
        
     
       
        
        #<b>summary</b>: Allows filtering based on a directory item id.
#<em>value</em> is a HealthVault::WCData::Types::Guids
        def directory_item_ids=(value)
          @children['directory-item-ids'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Types::Guids
        def directory_item_ids
          return @children['directory-item-ids'][:value]
        end
       
     
       
        
        #<b>summary</b>: Allows the caller to tell the server to return the entire set only if there have been changes made to the thing types since the date/time specified.
#<b>remarks</b>: This parameter is typically used by callers who cache the results of the response. You can timestamp the data returned and then poll for directory item updates periodically and pass that timestamp in this parameter. The server will determine if any updates have occurred since that timestamp and only return results if there were any updates.
#<em>value</em> is a String
        def last_client_refresh=(value)
          @children['last-client-refresh'][:value] = value
        end
        
        #<b>returns</b>: a String
        def last_client_refresh
          return @children['last-client-refresh'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'directoryfilterspec'
        
          
          @children['directory-item-ids'] = {:name => 'directory-item-ids', :class => HealthVault::WCData::Types::Guids, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 312519336 }
            
          
        
          
          @children['last-client-refresh'] = {:name => 'last-client-refresh', :class => String, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 312519336 }
            
          
        
        end
      end
  end
  
  end
end

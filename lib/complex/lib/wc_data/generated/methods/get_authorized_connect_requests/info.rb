module HealthVault
  module WCData
  module Methods
  module GetAuthorizedConnectRequests
  
      class Info < ComplexType
        
     
       
        
        #<b>summary</b>: Specifies the UTC datetime from which all found authorized connect requests are to be returned.
#<b>remarks</b>: If no datetime is supplied, DateTime.Min is assumed, and all connect requests found for the application are returned. If an invalid datetime is supplied, an InvalidDateTime error is retuned. Validated connect requests are removed by HealthVault after 90 days. It is advised that applications call GetAuthorizedConnectRequests daily or weekly to ensure that all validated connect requests are retrieved.
#<em>value</em> is a String
        def authorized_connect_requests_since=(value)
          @children['authorized-connect-requests-since'][:value] = value
        end
        
        #<b>returns</b>: a String
        def authorized_connect_requests_since
          return @children['authorized-connect-requests-since'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'info'
        
          
          @children['authorized-connect-requests-since'] = {:name => 'authorized-connect-requests-since', :class => String, :value => nil, :min => 0, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end

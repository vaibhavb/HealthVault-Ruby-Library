#!/usr/bin/ruby
require File.join(File.dirname(__FILE__),"../../lib/complex/lib/healthvault")
include HealthVault

#The first thing we should do is set our Configuration.
#This example uses the defaults from config.rb, so nothing needs to be done
#To make changes follow this commented example:
#
#Configuration.instance.app_id = "05a059c9-c309-46af-9b86-b06d42510550"
#Configuration.instance.logger = RAILS_DEFAULT_LOGGER

#Then we need an Application.
#Application.default will use settings from Configuration,
#or you can use Application.new to use other parameters
app = Application.default

#Once we have an Application, we can create Connections.
#A connection contains the session_token and shared_secret
#for maintaining a session with HealthVault. It can also hold
#the user_auth_token of a HealthVault user, and it can be serialized
#and saved for later, for instance, in a Rails session
connection = app.create_connection
#Authenticating a connection creates a shared_secret and session_token
#with HealthVault using the Application.id and certificate as credentials.
#Most useful HealthVault methods require an authenticated connection.
connection.authenticate
puts 'authenticated application...'

#Requests are used to communicate with HealthVault.
#They are created with Request.create passing in the name of the method,
#and the connection. Depending on the method, additional info may be required
#before sending the request.
request = Request.create("GetVocabulary", connection)
request.info.vocabulary_parameters = WCData::Methods::GetVocabulary::VocabularyParameters.new
request.info.vocabulary_parameters.add_vocabulary_key WCData::Vocab::VocabularyKey.new
request.info.vocabulary_parameters.vocabulary_key[0].name = "thing-types"
request.info.vocabulary_parameters.vocabulary_key[0].family = "wc"
request.info.vocabulary_parameters.vocabulary_key[0].version = '1'
request.info.vocabulary_parameters.fixed_culture = 'true'
#the return value of request.send is a Response object if the request succeeds,
#otherwise a StandardError is raised.
result = request.send
puts 'got thing-type vocabulary...'
puts result.xml


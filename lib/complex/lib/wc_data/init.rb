dir = File.dirname(__FILE__)
require File.join(dir,'simple_type')
require File.join(dir, 'complex_type')
require File.join(dir, 'raw_info_xml')

Dir["#{File.dirname(__FILE__)}/generated/**/*.rb"].each { |f| require f }

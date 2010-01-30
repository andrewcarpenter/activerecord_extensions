require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'active_record'
require 'activerecord_extensions'
require 'lib/user'

class Test::Unit::TestCase
end

# ActiveRecord::Base.logger = Logger.new(STDOUT)
# ActiveRecord::Base.colorize_logging = false

ActiveRecord::Base.establish_connection( { :adapter => 'mysql', :database => 'test' } )
ActiveRecord::Base.connection.recreate_database('transactional_factories_test')
ActiveRecord::Base.clear_active_connections!
ActiveRecord::Base.establish_connection( { :adapter => 'mysql', :database => 'transactional_factories_test' } )

load 'db/schema.rb'

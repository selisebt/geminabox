require "geminabox"
require "dotenv/load"

Geminabox.data = File.expand_path('/app/uploaded-gems/')

use Rack::Auth::Basic, "GemInAbox" do |username, password|
  ENV['ADMIN_PASSWORD'] == password && ENV['ADMIN_USERNAME'] == username
end

run Geminabox::Server


require "sass-rails"
require "bootstrap-sass"
require "autoprefixer-rails"
require "devise"
require "cancan"

module Iuris
	module Core
		def self.avaiable?(engine_name)
			Object.const_defined?("Iuris::#{engine_name.to_s.camelize}")
		end
	end
end

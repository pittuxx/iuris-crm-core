module Iuris
	module Core
	  class Engine < ::Rails::Engine
	  	require 'jquery-rails'
	  	require 'turbolinks'
	    isolate_namespace Iuris

	    config.i18n.default_locale = :es

	    paths['app/views'] << 'app/views/iuris'

	    initializer :append_migrations do |app|
	    
	    	unless app.root.to_s.match(root.to_s)
	    
	    		config.paths["db/migrate"].expanded.each do |p|
	    			app.config.paths["db/migrate"] << p
	    		end
	    	end	    
	    end
	  end
	end
end

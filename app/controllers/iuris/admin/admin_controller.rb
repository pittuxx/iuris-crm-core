module Iuris
	module Admin
		class AdminController < ApplicationController
			authorize_resource class: false
			
			def index
				@users = Iuris::User.ordered
			end
		end
	end
end
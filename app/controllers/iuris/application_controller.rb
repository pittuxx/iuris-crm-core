module Iuris
  class ApplicationController < ActionController::Base
  	before_action :authenticate_user!

  	rescue_from CanCan::AccessDenied do |exeption|
  		render :file => "static/403.html", :status => 403, :layout => false
  	end

  	def current_ability
  		@current_ability ||= Iuris::Ability.new(current_user)
  	end
  end
end

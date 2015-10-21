module Iuris
  module ApplicationHelper
  	FLASH_CLASSES = {
  		notice: "alert alert-info",
  		success: "alert alert-success",
  		alert: "alert alert-info",
  		error: "alert alert-danger"
  	}

  	def flash_class(level)
  		FLASH_CLASSES[level]
  	end

    def active(path)
      current_page?(path) ? 'active' : ''
    end

    def admin_active(path)
      if /^\/admin/ === path
        return 'active'
      end
    end

    def contacts_active(path)
      if /^\/contacts/ === path
        return 'active'
      end
    end

    def tasks_active(path)
      if /^\/tasks/ === path
        return 'active'
      end
    end

    def logout
      return '<span class="glyphicon glyphicon-off" aria-hidden="true"></span>'.html_safe
    end

    def home
      return '<span class="glyphicon glyphicon-home" aria-hidden="true"></span>'.html_safe
    end

  end
end

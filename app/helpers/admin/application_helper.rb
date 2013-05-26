module Admin::ApplicationHelper
    def active_class?(test)
	return 'active' if request.path == test
	''
    end
end

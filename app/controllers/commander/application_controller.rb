module Commander
  class ApplicationController < Commander.parent_controller
    before_action :commander_on_bridge?
    private

    def commander_on_bridge?
      if defined?(authorize_commander!)
        authorize_commander!
      end
    end
  end
end

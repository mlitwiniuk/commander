require "commander/engine"

module Commander
  mattr_accessor :parent_controller

  def self.parent_controller
    (@@parent_controller || '::ApplicationController').constantize
  end
end

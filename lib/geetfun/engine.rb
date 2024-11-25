module Geetfun
  class Engine < ::Rails::Engine
    isolate_namespace Geetfun

    config.to_prepare do
      ActionView::Helpers::FormBuilder.include(::Geetfun::FormBuilderExtensions)
    end

    # Make helpers available to the main application
    initializer "geetfun.helpers" do
      ActiveSupport.on_load(:action_controller_base) do
        helper Geetfun::ApplicationHelper
      end
    end
  end
end

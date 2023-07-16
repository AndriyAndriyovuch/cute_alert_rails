# frozen_string_literal: true

require_relative "cute_alert_rails/version"

module CuteAlertRails
  class Engine < ::Rails::Engine
    PRECOMPILE_ASSETS = Dir[root.join("app/assets/javascripts/**/*")]
    initializer 'rails_charts.assets' do |app|
      if app.config.respond_to?(:assets)
        app.config.assets.precompile += PRECOMPILE_ASSETS
      end
    end
  end
end

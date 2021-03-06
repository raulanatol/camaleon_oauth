module Plugins::CamaleonOauth::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def camaleon_oauth_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def camaleon_oauth_on_inactive(plugin)
  end

  # here all actions to upgrade for a new version
  # plugin: plugin model
  def camaleon_oauth_on_upgrade(plugin)
  end

  def camaleon_oauth_plugin_options(arg)
    arg[:links] << link_to(t('plugin.camaleon_oauth.documentation'), admin_plugins_camaleon_oauth_documentation_path)
  end
end

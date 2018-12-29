RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin == true
  end

  config.parent_controller = 'ApplicationController'

  require 'i18n'
  I18n.default_locale = :it

  config.main_app_name = ['TRANTOR']

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end

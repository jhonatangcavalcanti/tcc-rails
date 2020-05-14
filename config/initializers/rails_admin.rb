RailsAdmin.config do |config|

  config.main_app_name = ["Catálogo IPRJ", ""]

  config.navigation_static_links = {
    'IPRJ' => 'http://www.iprj.uerj.br/'
  }

  config.navigation_static_label = "Links Úteis"

  config.model Employee do
    weight -1
  end

  config.model JobPosition do
    parent Employee
  end

  config.model RoomType do
    parent Room
  end

  config.model Room do
    parent Building
  end

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

RailsAdmin.config do |config|

  config.main_app_name = ["Revival615", "Dashboard"]
  config.navigation_static_links = {
    'Revival Store' => 'http://www.revival615.com'
  }

  config.model 'Event' do
    label "Weekly Lineup"
    label_plural "Lineups"
    list do
      field :date do
        date_format :default
      end
      field :artists
    end
  end

  config.model 'Artist' do
    visible false
  end



  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

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

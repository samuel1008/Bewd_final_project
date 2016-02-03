class Acme::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_account_update_params, only: [:update]

end



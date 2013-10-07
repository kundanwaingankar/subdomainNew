class User::RegistrationsController < Devise::RegistrationsController
  def new
    super
    # add custom create logic here
  end

end
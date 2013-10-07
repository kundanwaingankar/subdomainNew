class WelcomeController < ApplicationController
  def index
    @user = Admin.where(:domain_name => request.subdomain).first || not_found
  end

  def not_found
    raise ActionController::RoutingError.new('User Not Found')
  end
end

class RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token, :only => :create
  def new
    super
  end

  def create
    super
    if resource.save
      resource.create_account
    end
  end

  def update
    super
  end
end

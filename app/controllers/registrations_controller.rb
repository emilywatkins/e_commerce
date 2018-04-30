class RegistrationsController < Devise::RegistrationsController
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

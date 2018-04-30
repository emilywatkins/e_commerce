class AccountsController < ApplicationController

  def create
    @account = Account.new
    @account.user = current_user
  end

end

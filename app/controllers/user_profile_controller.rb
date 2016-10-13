class UserProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: :show_editable
  before_action :set_user, only: :show_to_others

  def show_to_others

  end

  def show_editable

  end

  private

  def set_current_user
    @user = current_user
  end

  def set_user
    @user = User.find(params[:id])
  end
end

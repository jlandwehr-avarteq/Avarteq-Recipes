class UserProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: :edit
  before_action :set_user, only: :show

  #def show_to_others

  #end

  #def show_editable

  #end

  def show

  end

  def edit

  end

  private

  def set_current_user
    @user = current_user
  end

  def set_user
    @user = User.find(params[:id])
  end
end

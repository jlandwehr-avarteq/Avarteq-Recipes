class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_allergies, only: :edit

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    #TODO notices and alerts
    @user = current_user
    set_allergies_from_params
    @user.save
    redirect_to edit_user_path(@user)

  end

  private

  def set_allergies
    @allergies = Allergy.all
  end

  def set_allergies_from_params
    @user.allergies = Allergy.where(id: params[:user][:allergy_ids])
  end
end

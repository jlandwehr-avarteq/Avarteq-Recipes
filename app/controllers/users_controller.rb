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
    @user = current_user
    set_allergies_from_params
    if @user.save
    redirect_to edit_user_path(@user), notice: t('allergies.update_success')
    else

    redirect_to edit_user_path(@user), alert: t('allergies.update_fail')
    end
  end

  private

  def set_allergies
    @allergies = Allergy.all
  end

  def set_allergies_from_params
    @user.allergies = Allergy.where(id: params[:user][:allergy_ids])
  end
end

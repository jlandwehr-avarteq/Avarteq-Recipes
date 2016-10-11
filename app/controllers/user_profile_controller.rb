class UserProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_person

  def show_to_others

  end

  def show_editable

  end

  private

  def set_person
    @user = current_user
  end
end

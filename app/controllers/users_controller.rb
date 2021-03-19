class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes     #⇦めちゃくちゃ時間かかった
  end
end
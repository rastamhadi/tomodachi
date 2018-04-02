class FriendshipsController < ApplicationController
  before_action :set_user
  before_action :set_stranger, only: :create
  before_action :set_friend, only: :destroy

  def create
    @user.friends << @stranger
    redirect_to @user, notice: "#{@user.name} is now friends with #{@stranger.name}"
  end

  def destroy
    @user.friends.delete(@friend)
    redirect_to @user, notice: "#{@user.name} is no longer friends with #{@friend.name}"
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_stranger
    @stranger = User.find(stranger_params[:id])
  end

  def set_friend
    @friend = User.find(params[:id])
  end

  def stranger_params
    params.require(:user).permit(:id)
  end
end

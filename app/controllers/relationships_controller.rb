class RelationshipsController < ApplicationController

  def create
    current_user.follow(params[:id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:id])
    redirect_to request.referer
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.following_user
  end

  def followeds
    @user = User.find(params[:id])
    @users = @user.follower_user
  end

end
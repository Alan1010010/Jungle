class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = policy_scope(User).order(seeds: :desc).where.not(id: current_user.id)
    @users = @users.search_by_firstname_and_lastname_and_email(params[:navsearch]) if params[:navsearch].present?
  end

  def show
    @user = User.find(params[:id])
    leaderboard
    @activities = PublicActivity::Activity.where(owner_id: current_user.following_ids)
    authorize @user
    @followings = current_user.following_relationships.where(active: true)
    @following_users = []
    @followings.each do |following|
      @following_users << User.find(following.following_id)
    end
    @not_following_users = User.where.not(id: @following_users.map(&:id)).where.not(id: current_user.id)
  end

  def follow
    @index = params[:index]

    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.js
      end
    end
    authorize current_user
  end

  def unfollow
    @index = params[:index]

    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.js { render action: :follow }
      end
    end
    authorize current_user
  end

  def leaderboard
    @users = User.all.sort_by do |user|
      user.seeds
    end.reverse
    skip_authorization
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end

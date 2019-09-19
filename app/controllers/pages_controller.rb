class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
     @users = policy_scope(User).order(seeds: :desc).where.not(id: current_user.id)
  end

  def home_user_index

  end

end

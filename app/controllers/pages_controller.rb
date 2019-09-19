class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
     @users = policy_scope(User).order(seeds: :desc)
  end

  def home_user_index

  end

end

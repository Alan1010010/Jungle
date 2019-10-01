class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :ebook]

  def home
     @users = policy_scope(User).order(seeds: :desc)
  end

  def ebook

  end

  def home_user_index

  end

end

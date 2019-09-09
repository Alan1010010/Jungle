class LikesController < ApplicationController
  skip_after_action :verify_authorized
  def like
    @activity = PublicActivity::Activity.find(params[:id])
    @activity.liked_by current_user

    respond_to do |format|
      format.js
    end
  end

  def unlike
    @activity = PublicActivity::Activity.find(params[:id])
    @activity.unliked_by current_user

    respond_to do |format|
      format.js { render action: :like }
    end
  end
end

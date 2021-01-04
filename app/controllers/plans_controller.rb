class PlansController < ApplicationController
  def index
    @plans = policy_scope(Plan).all
  end
  def show
    @plan = Plan.find(params[:id])
  end
end


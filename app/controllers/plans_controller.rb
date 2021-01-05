class PlansController < ApplicationController
  def index
    @plans = policy_scope(Plan).all
  end

  def show
    skip_authorization
    @plan = Plan.find(params[:id])
    @user = current_user
    Stripe::Customer.create({
      email: @user.email,
      description: 'My First Test Customer (created for API docs)'
    })
  end

  def create_customer
  end
end


class SubscriptionsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @subscriptions = Subscription.all
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(event_id: subscription_params, user_id: current_user)
    if @subscription.save

      else
        redirect_to root_path
      end
    end
  end

  def edit
  end


    def update
      if @subscription.update
        redirect_to root_path
      end
    end

    def destroy
      @subscription.destroy
    end

    private
      def set_subscription
        @subscription = Subscription.find(params[:id])
      end

      def user_params
        params.require(:subscription).permit(:event_id)

      end

class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit,:update, :destroy]


  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to rnew_event_path

    else
      redirect_to root_path
      end
    end
  end

  def update
    if @user.update
      redirect_to root_path

    else
      end
    end

    def destroy
      @user.destroy
    end

    private
      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:name, :position, :email)

      end

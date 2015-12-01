class UsersController < ApplicationController

  before_action :authorize_user, only: [:index]
  before_action :admin_only, only: [:index]

  # renders the home page
def home
  @name = current_user ? @current_user.username : "Ironhacker"
end

  def index
    @users = User.all
  end

  # renders the signup form
  def new
    @user = User.new
  end

  def show
  end

  # receives form and creates a user from that data
  def create
    @user = User.new(user_params)
    @user.set_default_role
    if @user.save
      redirect_to '/'
    else
      render :new
    end
  end   

  private

  def set_default_role
      self.role = 'user'
  end

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end

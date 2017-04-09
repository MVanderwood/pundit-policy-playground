class MainController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!, only: :user_index
  
  def user_index
    @users = User.all
  end
  
  def index
    @contents = Content.for_user current_user
  end
  
  def show
    @content = Content.find(params[:id])
  end
end

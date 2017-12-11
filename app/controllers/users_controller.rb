class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def addform
  end

  def display
    user = User.find(params[:userid])
    render json: user
  end

  def newfrompost
    @user = User.create(name: params[:name], about: params[:about])
    redirect_to '/users'
  end

  def edit
    @user = User.find(params[:userid])
  end

  def applyedit
    @user = User.find(params[:userid])
    @user.name = params[:name]
    @user.about = params[:about]
    @user.save
    redirect_to '/users#{params[:userid]}'
  end

  def total
    render text: User.all.length
  end
end

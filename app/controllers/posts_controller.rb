class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  before_action :move_to_log_in, except: [:index]
  before_action :move_to_root_path, only: [:edit]

  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  
  end

  def edit
  
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @post.user_id
      @post.destroy
      redirect_to root_path
    end
  end

  def calendar
    @posts = Post.includes(:user).order("created_at DESC")
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_log_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  def move_to_root_path
    if current_user.id != @post.user_id 
      redirect_to root_path 
    end
  end

  def post_params
    params.require(:post).permit(:title, :text, :start_time, :end_time, images: []).merge(user_id: current_user.id)
  end

end

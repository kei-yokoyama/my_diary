class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  before_action :move_to_log_in, except: [:index]
  before_action :move_to_root_path, only: [:edit, :show]

  def index
    #ユーザー自身の投稿のみ表示
    if user_signed_in?
    user = User.find(current_user.id) 
    @posts = user.posts.order("created_at DESC")
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    unless @post.save
      render :new
    end

    user = User.find(current_user.id) 
    @message = user.messages.sample
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

  #@postをparams[:id]のレコードと定義
  def set_post
    @post = Post.find(params[:id])
  end

  #サインインしていない状態で投稿、詳細、編集ページに移動しようとすると、ログインページに遷移。
  def move_to_log_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  #投稿内容のストロングパラメーター
  def move_to_root_path
    if current_user.id != @post.user_id 
      redirect_to root_path 
    end
  end

  #投稿、編集のストロングパラメーター
  def post_params
    params.require(:post).permit(:title, :text, :start_time, :end_time, images: []).merge(user_id: current_user.id)
  end

end

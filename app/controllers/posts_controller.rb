class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update show destroy]
  before_action :move_to_log_in, except: [:index]
  before_action :move_to_root_path, only: %i[edit show]
  before_action :set_user

  def index
    # ユーザー自身の投稿のみ表示
    @posts = @user.posts.order('start_time DESC') if user_signed_in?
  end

  def new
    @post = Post.new
  end

  def create
    @message = (@user.messages.sample unless @user.messages.nil?)
    @post = Post.new(post_params)
    if @post.save
      render '/posts/create'
    else
      render :new
    end
  end

  def show; end

  def edit; end

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
    @posts = @user.posts.includes(:user).order('start_time DESC')
  end

  def search
    @posts = @user.posts.search(params[:keyword]).order('created_at DESC')
  end

  private

  # @postをparams[:id]のレコードと定義
  def set_post
    @post = Post.find(params[:id])
  end

  # サインインしていない状態で投稿、詳細、編集ページに移動しようとすると、ログインページに遷移。
  def move_to_log_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  # 投稿内容のストロングパラメーター
  def move_to_root_path
    redirect_to root_path if current_user.id != @post.user_id
  end

  # 投稿、編集のストロングパラメーター
  def post_params
    params.require(:post).permit(:title, :text, :start_time, :end_time, images: []).merge(user_id: current_user.id)
  end

  # @userをログインユーザーと定義
  def set_user
    @user = User.find(current_user.id) if user_signed_in?
  end
end

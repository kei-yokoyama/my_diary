# 投稿完了メッセージコントローラー
class MessagesController < ApplicationController
  before_action :set_message, only: %i[edit update destroy]
  before_action :move_to_log_in
  before_action :move_to_root_path, only: [:edit]

  def index
    if user_signed_in?
      user = User.find(current_user.id)
      @messages = user.messages.order('created_at DESC')
    end
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      render :edit
    end
  end

  def edit; end

  def update
    if @message.update(message_params)
      redirect_to messages_path
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @message.user_id
      @message.destroy
      redirect_to messages_path
    end
  end

  private

  # @messageをparams[:id]のレコードと定義
  def set_message
    @message = Message.find(params[:id])
  end

  # サインインしていない状態で投稿、編集ページに移動しようとすると、ログインページに遷移。
  def move_to_log_in
    redirect_to new_user_session_path unless user_signed_in?
  end

  # メッセージ内容のストロングパラメーター
  def move_to_root_path
    redirect_to root_path if current_user.id != @message.user_id
  end

  # メッセージ、編集のストロングパラメーター
  def message_params
    params.require(:message).permit(:text, :image).merge(user_id: current_user.id)
  end
end

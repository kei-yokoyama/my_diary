require 'rails_helper'

RSpec.describe Message, type: :model do
  describe Message do
    before do
      @message = FactoryBot.build(:message)
    end

    describe '日記投稿機能' do
      context '投稿がうまくいくとき' do
        it 'ログイン状態で、本文または画像が存在すればメッセージの保存が可能' do
          expect(@message).to be_valid
        end

        it '本文が空でも画像が存在していれば保存できること' do
          @message.text = nil
          expect(@message).to be_valid
        end
    
        it '画像が空でも本文が存在すれば保存できること' do
          @message.image = nil
          expect(@message).to be_valid
        end
    
      end

      context '投稿がうまくいかないとき' do
        it 'userが紐付いていないと保存できないこと' do
          @message.user = nil
          @message.valid?
          expect(@message.errors.full_messages).to include('User must exist')
        end


        it '本文と画像が空では保存できないこと' do
          @message.text = nil
          @message.image = nil
          @message.valid?
          expect(@message.errors.full_messages).to include("Text 内容または画像を入力してください")
        end

        
      end
    end
  end
end

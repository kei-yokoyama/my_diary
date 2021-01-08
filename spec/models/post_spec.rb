require 'rails_helper'

RSpec.describe Post, type: :model do
  describe Post do
    before do
      @post = FactoryBot.build(:post)
    end

    describe '日記投稿機能' do
      context '投稿がうまくいくとき' do
        it 'ログイン状態で、タイトル、本文、が存在すれば投稿の保存が可能' do
          expect(@post).to be_valid
        end
      end

      context '投稿がうまくいかないとき' do
        it 'userが紐付いていないと保存できないこと' do
          @post.user = nil
          @post.valid?
          expect(@post.errors.full_messages).to include('User must exist')
        end

        it 'タイトルが空では保存できないこと' do
          @post.title = nil
          @post.valid?
          expect(@post.errors.full_messages).to include("Title can't be blank")
        end

        it '本文が空では保存できないこと' do
          @post.text = nil
          @post.valid?
          expect(@post.errors.full_messages).to include("Text can't be blank")
        end
      end
    end
  end
end
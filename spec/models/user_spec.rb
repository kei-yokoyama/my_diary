require 'rails_helper'
RSpec.describe User, type: :model do
  describe User do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録がうまくいくとき' do
        it 'nicknameとemail,password,password確認 が存在すれば登録' do
          expect(@user).to be_valid
        end
      end

      context '新規登録がうまくいかないとき' do
        it 'nicknameが空' do
          @user.nickname = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Nickname can't be blank")
        end

        it 'nicknameが9文字以上' do
          @user.nickname = '123456789'
          @user.valid?
          expect(@user.errors.full_messages).to include('Nickname is too long (maximum is 8 characters)')
        end

        it 'passwordが5文字以下' do
          @user.password = 'a1234'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
        end

        it 'emailが空' do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end

        it 'emailに@なし' do
          @user.email = 'abc'
          @user.valid?
          expect(@user.errors.full_messages).to include('Email is invalid')
        end

        it 'emailが別アカウントにすでに存在' do
          another_user = FactoryBot.create(:user)
          @user.email = another_user.email
          @user.valid?
          expect(@user.errors.full_messages).to include('Email has already been taken')
        end

        it 'passwordが空' do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank")
        end

        it 'passwordが5文字以下' do
          @user.password = 'a1234'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
        end

        it 'passwordが全角数字がある' do
          @user.password = '12345６'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password 半角英数字記号入力してください')
        end

        it 'passwordが全角英字がある' do
          @user.password = '12345ｐ'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password 半角英数字記号入力してください')
        end

        it 'passwordが全角記号がある' do
          @user.password = '12345＠'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password 半角英数字記号入力してください')
        end

        it 'passwordが半角カタカナがある' do
          @user.password = '12345ｱ'
          @user.valid?
          expect(@user.errors.full_messages).to include('Password 半角英数字記号入力してください')
        end

        it 'passwordとpassword確認が不一致' do
          @user.password_confirmation = 'a12345'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
        end
      end
    end
  end
end

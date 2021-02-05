class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  with_options presence: true do
    validates :nickname, presence: true, length: { maximum: 8 }
    validates :password, format: { with: /\A[ -~]+\z/, message: '半角英数字記号入力してください' }
  end

  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :sns_credentials

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )
      # userが登録済みであるか判断
    if user.persisted?
    sns.user = user
    sns.save
    end
  user
  end
end

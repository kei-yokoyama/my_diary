class Message < ApplicationRecord
  validates :text, presence: true, unless: :was_attached?, presence: { message: '内容または画像を入力してください' }

  belongs_to :user
  has_one_attached :image

  def was_attached?
    image.attached?
  end
end

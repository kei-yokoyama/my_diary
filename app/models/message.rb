class Message < ApplicationRecord
  validates :text, presence: true, unless: :was_attached?, presence: { message: '内容または画像を入力してください' }

  belongs_to :user
  has_one_attached :image

  #投稿に画像が添付されている場合true。text本文がなくても投稿保存可能になる。
  def was_attached?
    image.attached?
  end
end

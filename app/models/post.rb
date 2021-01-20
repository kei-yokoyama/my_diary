class Post < ApplicationRecord

  with_options presence: true do
  validates :title
  validates :text, unless: :was_attached? , presence: { message: '内容または画像を入力してください' }
  end

  belongs_to :user
  has_many_attached :images
  
  def was_attached?
    self.images.attached?
  end

  def self.search(search)
    if search != ""
      Post.where('title LIKE(?)', "%#{search}%")
    elsif
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end

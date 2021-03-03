class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text, unless: :was_attached?, presence: { message: '内容または画像を入力してください' }
  end

  belongs_to :user
  has_many_attached :images

  #投稿に画像が添付されている場合true。text本文がなくても投稿保存可能になる。
  def was_attached?
    images.attached?
  end

  #日記ワード検索機能。 コントローラーのsearchメソッドで起動。
  def self.search(search)
  #タイトルに検索文字があればその投稿データをすべて取得
    if search != ''
      Post.where('title LIKE(?)', "%#{search}%")
  #text本文に検索文字があればその投稿データをすべて取得
    elsif Post.where('text LIKE(?)', "%#{search}%")
  #検索文字がみつからなければ、全投稿データを取得
    else
      Post.all
    end
  end
end

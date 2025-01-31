class PostImage < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def get_image(width, height)
    if image.attached?
      image.variant(resize: "#{width}x#{height}")
    else
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image', content_type: 'image/jpeg')
      image.variant(resize: "#{width}x#{height}")
    end
  end

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end

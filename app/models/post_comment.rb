class PostComment < ApplicationRecord
enum payment_method: { credit_card: 0, transfer: 1 }

belongs_to :user
belongs_to :post_image

end

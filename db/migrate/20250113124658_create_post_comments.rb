class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|

      t.timestamps

      t.text :comment
      t.integer :user_id
      t.integer :post_image_id
    end
  end
end

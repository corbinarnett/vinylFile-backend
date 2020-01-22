class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :username
      t.float :rating
      t.integer :album_id

      t.timestamps
    end
  end
end

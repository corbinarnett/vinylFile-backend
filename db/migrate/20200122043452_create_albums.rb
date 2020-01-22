class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.string :label
      t.string :release_date
      t.string :image_url

      t.timestamps
    end
  end
end

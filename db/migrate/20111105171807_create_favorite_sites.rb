class CreateFavoriteSites < ActiveRecord::Migration
  def change
    create_table :favorite_sites do |t|
      t.integer :user_id
      t.string :sitename
      t.string :url

      t.timestamps
    end
  end
end

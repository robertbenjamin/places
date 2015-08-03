class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
    	t.string :location
    	t.string :photo_url
    	t.string :note
    	t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

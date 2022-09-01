class CreateHikeTags < ActiveRecord::Migration[7.0]
  def change
    create_table :hike_tags do |t|
      t.references :hike, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end

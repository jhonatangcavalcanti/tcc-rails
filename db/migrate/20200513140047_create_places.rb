class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.references :room, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end

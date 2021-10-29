class CreateAllocationPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :allocation_places do |t|
      t.references :allocation, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end

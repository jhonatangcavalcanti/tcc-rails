class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :number
      t.references :building, foreign_key: true
      t.references :room_type, foreign_key: true

      t.timestamps
    end
  end
end

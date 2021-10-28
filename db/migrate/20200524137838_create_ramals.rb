class CreateRamals < ActiveRecord::Migration[5.2]
  def change
    create_table :ramals do |t|
      t.string :number

      t.timestamps
    end
  end
end

class CreateAllocationRamals < ActiveRecord::Migration[5.2]
  def change
    create_table :allocation_ramals do |t|
      t.references :allocation, foreign_key: true
      t.references :ramal, foreign_key: true

      t.timestamps
    end
  end
end

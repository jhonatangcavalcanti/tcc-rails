class CreateAllocations < ActiveRecord::Migration[5.2]
  def change
    create_table :allocations do |t|
      t.references :employee, foreign_key: true
      t.references :room, foreign_key: true
      t.references :allocation_role, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      # t.references :employee, foreign_key: true
      # t.references :job_position, foreign_key: true

      t.timestamps
    end
  end
end

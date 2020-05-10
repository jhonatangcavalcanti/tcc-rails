class CreateJoinTableEmployeeJobPosition < ActiveRecord::Migration[5.2]
  def change
    create_join_table :employees, :job_positions do |t|
      # t.index [:employee_id, :job_position_id]
      # t.index [:job_position_id, :employee_id]
    end
  end
end

class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.text :additional_contact_data

      t.timestamps
    end
  end
end

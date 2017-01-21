class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :truck
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end

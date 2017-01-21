class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :service_type, foreign_key: true
      t.datetime :date
      t.string :description
      t.decimal :quantity
      t.decimal :rate

      t.timestamps
    end
  end
end

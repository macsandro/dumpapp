class CreateWorkOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :work_orders do |t|
      t.integer :number
      t.datetime :date
      t.text :description
      t.references :work_order_status, foreign_key: true
      t.references :site, foreign_key: true
      t.references :driver, foreign_key: true
      t.datetime :start_date
      t.datetime :finish_date

      t.timestamps
    end
  end
end

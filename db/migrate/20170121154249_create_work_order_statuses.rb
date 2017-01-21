class CreateWorkOrderStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :work_order_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :address
      t.boolean :active
      t.string :contact
      t.string :phone
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end

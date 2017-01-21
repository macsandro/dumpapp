class CreateDumpsters < ActiveRecord::Migration[5.0]
  def change
    create_table :dumpsters do |t|
      t.string :number
      t.string :location
      t.references :dumpster_type, foreign_key: true

      t.timestamps
    end
  end
end

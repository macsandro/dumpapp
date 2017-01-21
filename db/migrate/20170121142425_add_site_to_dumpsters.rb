class AddSiteToDumpsters < ActiveRecord::Migration[5.0]
  def change
    add_reference :dumpsters, :site, foreign_key: true
  end
end

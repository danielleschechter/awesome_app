class RemovePartakerIdFromAwesomeQuotes < ActiveRecord::Migration
  def change
    remove_column :awesome_quotes, :partaker_id, :integer
  end
end

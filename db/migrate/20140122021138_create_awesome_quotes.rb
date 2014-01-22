class CreateAwesomeQuotes < ActiveRecord::Migration
  def change
    create_table :awesome_quotes do |t|
      t.integer :partaker_id
      t.text :quote

      t.timestamps
    end
  end
end

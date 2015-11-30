class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :tournament
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :tournament
      t.references :player

      t.timestamps null: false
    end
  end
end

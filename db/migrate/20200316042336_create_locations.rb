class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :infected, null: false, default: 0
      t.integer :dead, null: false, default: 0
      t.integer :sick, null: false, default: 0
      t.integer :recovered, null: false, default: 0
    end
  end
end

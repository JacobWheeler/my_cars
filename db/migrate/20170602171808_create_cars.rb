class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.string :color, null: false
      t.integer :year, null: false
      t.integer :mileage, null: false
      t.boolean :runs, default: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

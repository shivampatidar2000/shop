class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :buy_year
      t.integer :number_plate
      t.string :color

      t.timestamps
    end
  end
end

class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :nombre
      t.text :tamaño
      t.text :galaxia

      t.timestamps
    end
  end
end

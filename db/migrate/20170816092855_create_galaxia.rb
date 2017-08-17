class CreateGalaxia < ActiveRecord::Migration[5.1]
  def change
    create_table :galaxia do |t|
      t.text :nombre
      t.text :body

      t.timestamps
    end
  end
end

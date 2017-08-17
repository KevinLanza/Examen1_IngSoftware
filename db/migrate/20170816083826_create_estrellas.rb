class CreateEstrellas < ActiveRecord::Migration[5.1]
  def change
    create_table :estrellas do |t|
      t.string :nombre
      t.text :tamaño

      t.timestamps
    end
  end
end

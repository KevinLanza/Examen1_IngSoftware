class CreateAsteroides < ActiveRecord::Migration[5.1]
  def change
    create_table :asteroides do |t|
      t.string :nombre
      t.text :Advertencia

      t.timestamps
    end
  end
end

class CreateBeyonds < ActiveRecord::Migration[5.1]
  def change
    create_table :beyonds do |t|
      t.string :nombre
      t.text :tipo

      t.timestamps
    end
  end
end

class CreatePlaneta < ActiveRecord::Migration[5.1]
  def change
    create_table :planeta do |t|
      t.string :nombre
      t.text :tamaño

      t.timestamps
    end
  end
end

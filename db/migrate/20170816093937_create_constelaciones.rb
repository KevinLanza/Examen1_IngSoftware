class CreateConstelaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :constelaciones do |t|
      t.string :signo

      t.timestamps
    end
  end
end

class CreateAstronomia < ActiveRecord::Migration[5.1]
  def change
    create_table :astronomia do |t|

      t.timestamps
    end
  end
end

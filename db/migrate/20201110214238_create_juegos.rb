class CreateJuegos < ActiveRecord::Migration[5.2]
  def change
    create_table :juegos do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateReglasJuegos < ActiveRecord::Migration[5.2]
  def change
    create_table :reglas_juegos do |t|
      t.references :juego, type: :integer, foreign_key: true
      t.text :regla

      t.timestamps
    end
  end
end

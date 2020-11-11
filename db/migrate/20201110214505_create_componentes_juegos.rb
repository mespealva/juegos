class CreateComponentesJuegos < ActiveRecord::Migration[5.2]
  def change
    create_table :componentes_juegos do |t|
      t.text :componente
      t.references :juego, type: :integer, foreign_key: true

      t.timestamps
    end
  end
end

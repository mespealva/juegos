class ReglasJuego < ApplicationRecord
  belongs_to :juego
  has_one_attached :file, dependent: :destroy
end

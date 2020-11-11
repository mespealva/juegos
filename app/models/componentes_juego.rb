class ComponentesJuego < ApplicationRecord
  belongs_to :juego
  has_many_attached :images, dependent: :destroy
end

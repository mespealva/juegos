class Juego < ApplicationRecord
    has_one_attached :avatar
    has_many :componentes_juegos, dependent: :destroy
    has_many :reglas_juegos, dependent: :destroy
end

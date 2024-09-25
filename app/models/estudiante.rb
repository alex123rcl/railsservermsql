class Estudiante < ApplicationRecord
  before_validation :normalize_carnet 

  # Validaciones para 'nombre'
  validates :nombre, presence: true
  validates :nombre, length: { maximum: 15 }
  validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "solo permite letras" }

  # Validaciones para 'apellido'
  validates :apellido, presence: true
  validates :apellido, length: { maximum: 15 }
  validates :apellido, format: { with: /\A[a-zA-Z]+\z/, message: "solo permite letras" }

  # Validaciones para 'carrera'
  validates :carrera, presence: true
  validates :carrera, length: { maximum: 15 }
  validates :carrera, format: { with: /\A[a-zA-Z]+\z/, message: "solo permite letras" }

  # Validaciones para 'carnet'
  validates :carnet, presence: true
  validates :carnet, format: { with: /\A\d{2}-\d{5}-\d{1}\z/, message: "debe tener el formato 12-34567-8" }

  private

  def normalize_carnet
    self.carnet = carnet.to_s.strip.upcase if carnet.present?
  end
end



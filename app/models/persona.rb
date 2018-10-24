class Persona < ApplicationRecord
  validate_presence_of :nombre, :apellido
  belongs_to :documento
end

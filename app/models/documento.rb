class Documento < ApplicationRecord
    validate_presence_of :detalle
    has_many: personas, dependent : : destroy
end

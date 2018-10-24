require 'rails_helper'

RSpec.describe Persona, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it {should belong_to(:documento)}
  it {should validate_presence_of(:nombre)}
  it {should validate_presence_of(:apellido)}
end

#RSpec.describe documentos, type: :model do
#  it {should have_many(:personas).dependent(:destroy)}
#  it {should validate_presence_of(:detalle)}
#end

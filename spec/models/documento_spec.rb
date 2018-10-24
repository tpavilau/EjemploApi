require 'rails_helper'

RSpec.describe Documento, type: :model do
  it {should have_many(:personas).dependent(:destroy)}
  it {should validate_presence_of(:detalle)}
  #pending "add some examples to (or delete) #{__FILE__}"

end

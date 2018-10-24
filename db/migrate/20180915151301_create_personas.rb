class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :name
      t.string :apellido
      t.references :documento, foreign_key: true

      t.timestamps
    end
  end
end

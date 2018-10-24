class CreateDocumentos < ActiveRecord::Migration[5.1]
  def change
    create_table :documentos do |t|
      t.string :name
      t.string :apellido

      t.timestamps
    end
  end
end

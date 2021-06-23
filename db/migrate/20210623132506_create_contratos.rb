class CreateContratos < ActiveRecord::Migration[6.0]
  def change
    create_table :contratos do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.references :burguer, null: false, foreign_key: true
      t.references :bebida, null: false, foreign_key: true

      t.timestamps
    end
  end
end

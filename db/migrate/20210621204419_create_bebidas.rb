class CreateBebidas < ActiveRecord::Migration[6.0]
  def change
    create_table :bebidas do |t|
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end

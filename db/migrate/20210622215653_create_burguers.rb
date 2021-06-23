class CreateBurguers < ActiveRecord::Migration[6.0]
  def change
    create_table :burguers do |t|
      t.string :nome
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end

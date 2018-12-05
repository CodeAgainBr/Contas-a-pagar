class CreateFornecedores < ActiveRecord::Migration[5.0]
  def change
    create_table :fornecedores do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
    add_index :fornecedores, :nome, unique: true
  end
end

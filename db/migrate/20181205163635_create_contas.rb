class CreateContas < ActiveRecord::Migration[5.0]
  def change
    create_table :contas do |t|
      t.string :descricao
      t.string :despesa
      t.float :valor
      t.date :vencimento
      t.belongs_to :fornecedor, foreign_key: true

      t.timestamps
    end
    add_index :contas, :descricao, unique: true
  end
end

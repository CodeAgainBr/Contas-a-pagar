class CreateConta < ActiveRecord::Migration[5.0]
  def change
    create_table :conta do |t|
      t.string :descricao
      t.string :tipo
      t.string :despesa
      t.float :valor
      t.date :vencimento
      t.belongs_to :fornecedor, foreign_key: true

      t.timestamps
    end
  end
end

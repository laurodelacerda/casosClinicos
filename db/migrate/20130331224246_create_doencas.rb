class CreateDoencas < ActiveRecord::Migration
  def change
    create_table :doencas do |t|
      t.string :nomepopular
      t.string :nomebio
      t.string :historico
      t.string :descricao
      t.string :causa
      t.references :tipodoenca

      t.timestamps
    end
    add_index :doencas, :tipodoenca_id
  end
end

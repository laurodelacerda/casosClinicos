class CreateDoencaprevencaos < ActiveRecord::Migration
  def change
    create_table :doencaprevencaos do |t|
      t.references :doenca
      t.references :prevencao

      t.timestamps
    end
    add_index :doencaprevencaos, :doenca_id
    add_index :doencaprevencaos, :prevencao_id
  end
end

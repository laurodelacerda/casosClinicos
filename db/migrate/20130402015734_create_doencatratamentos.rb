class CreateDoencatratamentos < ActiveRecord::Migration
  def change
    create_table :doencatratamentos do |t|
      t.references :doenca
      t.references :tratamento

      t.timestamps
    end
    add_index :doencatratamentos, :doenca_id
    add_index :doencatratamentos, :tratamento_id
  end
end

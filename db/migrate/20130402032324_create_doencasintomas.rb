class CreateDoencasintomas < ActiveRecord::Migration
  def change
    create_table :doencasintomas do |t|
      t.references :doenca
      t.references :sintoma

      t.timestamps
    end
    add_index :doencasintomas, :doenca_id
    add_index :doencasintomas, :sintoma_id
  end
end

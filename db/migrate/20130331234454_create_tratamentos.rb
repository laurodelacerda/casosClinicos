class CreateTratamentos < ActiveRecord::Migration
  def change
    create_table :tratamentos do |t|
      t.string :metodo
      t.references :tipotratamento

      t.timestamps
    end
    add_index :tratamentos, :tipotratamento_id
  end
end

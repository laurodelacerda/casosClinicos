class CreateSintomas < ActiveRecord::Migration
  def change
    create_table :sintomas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

class CreatePrevencaos < ActiveRecord::Migration
  def change
    create_table :prevencaos do |t|
      t.string :metodo

      t.timestamps
    end
  end
end

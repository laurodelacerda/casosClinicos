class CreateTipodoencas < ActiveRecord::Migration
  def change
    create_table :tipodoencas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

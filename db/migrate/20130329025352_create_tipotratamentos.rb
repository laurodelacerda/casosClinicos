class CreateTipotratamentos < ActiveRecord::Migration
  def change
    create_table :tipotratamentos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end

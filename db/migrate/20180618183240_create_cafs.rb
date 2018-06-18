class CreateCafs < ActiveRecord::Migration
  def change
    create_table :cafs do |t|
      t.string :usuario
      t.string :senha

      t.timestamps null: false
    end
  end
end

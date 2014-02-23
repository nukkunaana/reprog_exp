class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.string :type
      t.integer :passage
      t.datetime :date
      t.string :container

      t.timestamps
    end
  end
end

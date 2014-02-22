class CreatePlasmids < ActiveRecord::Migration
  def change
    create_table :plasmids do |t|
      t.string :name

      t.timestamps
    end
  end
end

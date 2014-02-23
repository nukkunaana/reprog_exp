class CreateProbes < ActiveRecord::Migration
  def change
    create_table :probes do |t|
      t.integer :number
      t.datetime :date
      t.string :dna
      t.integer :volume

      t.timestamps
    end
  end
end

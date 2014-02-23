class CreateVirusProbes < ActiveRecord::Migration
  def change
    create_table :virus_probes do |t|
      t.integer :viri_id
      t.integer :probe_id

      t.timestamps
    end
  end
end

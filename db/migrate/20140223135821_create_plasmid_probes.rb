class CreatePlasmidProbes < ActiveRecord::Migration
  def change
    create_table :plasmid_probes do |t|
      t.integer :plasmid_id
      t.integer :probe_id

      t.timestamps
    end
  end
end

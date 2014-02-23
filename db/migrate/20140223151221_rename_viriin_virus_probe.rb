class RenameViriinVirusProbe < ActiveRecord::Migration
  def change
    rename_column :virus_probes, :viri_id, :virus_id
  end
end

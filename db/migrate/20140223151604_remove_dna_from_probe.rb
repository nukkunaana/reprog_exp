class RemoveDnaFromProbe < ActiveRecord::Migration
  def change
    remove_column :probes, :dna
  end
end

class AddFieldsToPlasmid < ActiveRecord::Migration
  def change
    add_column :plasmids, :volume, :integer
    add_column :plasmids, :concentration, :integer
    add_column :plasmids, :date, :datetime
  end
end

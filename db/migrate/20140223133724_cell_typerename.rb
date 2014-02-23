class CellTyperename < ActiveRecord::Migration
  def change
    rename_column :cells, :type, :cell_type
  end
end

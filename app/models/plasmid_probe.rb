class PlasmidProbe < ActiveRecord::Base
  belongs_to :plasmid
  belongs_to :probe
end

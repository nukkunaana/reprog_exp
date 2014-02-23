class PlasmidProbe < ActiveRecord::Base
  has_one :plasmid
  has_one :probe

  belongs_to :plasmid
  belongs_to :probe
end

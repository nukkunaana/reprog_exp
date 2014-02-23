class Plasmid < ActiveRecord::Base
  has_one :plasmid_probe
  has_one :probe, :through => :plasmid_probe
end

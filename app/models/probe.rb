class Probe < ActiveRecord::Base
  has_one :plasmid_probe
  has_one :plasmid, :through => :plasmid_probe

  has_one :virus_probe
  has_one :virus, :through => :virus_probe
end

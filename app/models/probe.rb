class Probe < ActiveRecord::Base
  has_many :plasmid_probes
  has_many :plasmids, :through => :plasmid_probes
  accepts_nested_attributes_for :plasmid_probes

  has_one :virus_probe
  has_one :virus, :through => :virus_probe
end

class Plasmid < ActiveRecord::Base
  has_many :plasmid_probes

  has_many :probes, :through => :plasmid_probes
end

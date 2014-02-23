class Virus < ActiveRecord::Base
  has_one :virus_probe
  has_one :probe, :through => :virus_probe
end

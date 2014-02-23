class VirusProbe < ActiveRecord::Base
  has_one :virus
  has_one :probe

  belongs_to :virus
  belongs_to :probe
end

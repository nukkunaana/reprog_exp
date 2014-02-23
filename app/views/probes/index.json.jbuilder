json.array!(@probes) do |probe|
  json.extract! probe, :id, :number, :date, :dna, :volume
  json.url probe_url(probe, format: :json)
end

json.array!(@virus_probes) do |virus_probe|
  json.extract! virus_probe, :id, :viri_id, :probe_id
  json.url virus_probe_url(virus_probe, format: :json)
end

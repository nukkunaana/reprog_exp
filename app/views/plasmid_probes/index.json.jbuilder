json.array!(@plasmid_probes) do |plasmid_probe|
  json.extract! plasmid_probe, :id, :plasmid_id, :probe_id
  json.url plasmid_probe_url(plasmid_probe, format: :json)
end

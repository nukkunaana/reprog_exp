json.array!(@plasmids) do |plasmid|
  json.extract! plasmid, :id, :name
  json.url plasmid_url(plasmid, format: :json)
end

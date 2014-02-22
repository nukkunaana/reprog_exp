json.array!(@viri) do |virus|
  json.extract! virus, :id, :name, :volume, :date
  json.url virus_url(virus, format: :json)
end

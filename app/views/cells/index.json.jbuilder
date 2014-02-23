json.array!(@cells) do |cell|
  json.extract! cell, :id, :type, :passage, :date, :container
  json.url cell_url(cell, format: :json)
end

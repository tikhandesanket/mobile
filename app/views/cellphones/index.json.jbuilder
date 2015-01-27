json.array!(@cellphones) do |cellphone|
  json.extract! cellphone, :id, :brand, :price, :color, :details
  json.url cellphone_url(cellphone, format: :json)
end

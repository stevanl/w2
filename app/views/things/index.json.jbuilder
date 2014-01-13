json.array!(@things) do |thing|
  json.extract! thing, :id, :name, :description, :price, :price, :category, :sub_category
  json.url thing_url(thing, format: :json)
end

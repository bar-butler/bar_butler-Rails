json.liquors do
json.array! @liquors do |liquors|
    json.id liquors.id
    json.name liquors.liquor_name
    json.type liquors.liquor_type
    json.bottle_count liquors.bottle_count
  end
end
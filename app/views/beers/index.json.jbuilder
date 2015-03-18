json.beers do
  json.array! @beers do |b|
    json.id b.id
    json.name b.beer_name
    json.type b.beer_type
    json.weight b.weight
    json.dry_at b.dry_at
    json.keg_weight b.keg_weight
    json.keg_number b.keg_number
  end
end
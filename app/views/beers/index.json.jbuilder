json.beers do
  json.array! @beers do |beers|
    json.id beers.id
    json.name beers.beer_name
    json.type beers.beer_type
    json.weight beers.weight
    json.dry_at beers.dry_at
    json.keg_weight beers.keg_weight
    json.keg_number beers.keg_number
  end
end
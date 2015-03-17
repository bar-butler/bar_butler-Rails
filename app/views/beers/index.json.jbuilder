json.array! @beers do |beers|
  json.beers do 
      json.id beers.id
      json.name beers.beer_name
      json.type beers.beer_type
      json.weight beers.weight
      json.keg_weight beers.keg_weight
      json.keg_number beers.keg_number
  end
end
json.beers do
<<<<<<< HEAD
  json.array! @beers do |beers|
      json.id beers.id
      json.name beers.beer_name
      json.type beers.beer_type
      json.weight beers.weight
      json.dry_at beers.dry_at
      json.keg_weight beers.keg_weight
      json.keg_number beers.keg_number
=======
  json.array! @beers do |b|
      json.id b.id
      json.name b.beer_name
      json.type b.beer_type
      json.weight b.weight
      json.dry_at b.dry_at
      json.keg_weight b.keg_weight
      json.keg_number b.keg_number
>>>>>>> 5a82706821783ec869919dbe00f57423c018baaf
  end
end
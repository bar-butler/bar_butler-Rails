json.beer do 
  json.name @beer.beer_name
  json.type @beer.beer_type
  json.weight @beer.weight
  json.keg_weight @beer.keg_weight
  json.keg_number @beer.keg_number
end
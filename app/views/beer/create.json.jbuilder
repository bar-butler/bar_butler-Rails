json.user do 
  json.name @user.beer.name
  json.type @user.beer.type
  json.weight @user.beer.weight
  json.keg_weight @user.beer.keg_weight
end
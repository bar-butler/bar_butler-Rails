json.user do 
  json.authentication_token @user.authentication_token
  json.bar_name @user.bar_name
end
json.user do
  json.id @user.id
  json.first_name @user.first_name
  json.last_name @user.last_name
  json.bar_name @user.bar_name
  json.email @user.email
  json.authentication_token @user.authentication_token
end
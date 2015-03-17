## Inventory-Assist

## API End Point

<strong>https://inventory-assist.herokuapp.com</strong>

##Routes
```
                  Prefix Verb   URI Pattern                      Controller#Action
        new_user_session GET    /users/sign_in(.:format)         sessions#new
            user_session POST   /users/sign_in(.:format)         sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)        sessions#destroy
           user_password POST   /users/password(.:format)        devise/passwords#create
       new_user_password GET    /users/password/new(.:format)    devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
                         PATCH  /users/password(.:format)        devise/passwords#update
                         PUT    /users/password(.:format)        devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)          registrations#cancel
       user_registration POST   /users(.:format)                 registrations#create
   new_user_registration GET    /users/sign_up(.:format)         registrations#new
  edit_user_registration GET    /users/edit(.:format)            registrations#edit
                         PATCH  /users(.:format)                 registrations#update
                         PUT    /users(.:format)                 registrations#update
                         DELETE /users(.:format)                 registrations#destroy
                    user GET    /users/:id(.:format)             users#show
               edit_user PATCH  /users/:id(.:format)             users#edit
            destroy_user DELETE /users/:id(.:format)             users#destroy
          new_user_beers POST   /users/:id/beers(.:format)       beers#create
              user_beers GET    /users/:id/beers/:id(.:format)   beers#show
         edit_user_beers PATCH  /users/:id/beers/:id(.:format)   beers#edit
      destroy_user_beers DELETE /users/:id/beers/:id(.:format)   beers#destroy
         new_user_liquor POST   /users/:id/liquors(.:format)     liquors#create
             user_liquor GET    /users/:id/liquors/:id(.:format) liquors#show
        edit_user_liquor PATCH  /users/:id/liquors/:id(.:format) liquors#edit
     destroy_user_liquor DELETE /users/:id/liquors/:id(.:format) liquors#destroy
                    root GET    /                                users#show
```

#Users

##**sign up/create user**

####Request

`POST /users`

```json
"user": {
  "fist_name": "will",
  "last_name": "jones",
  "bar_name": "oakgrovetavern",
  "email": "oakgrovetavern@gmail.com",
  "password": "password"
}
```

####Response
`Status: 201 Created`

creates a user, returns a success message and the following...

```json
{
"user": {
     "first_name": "will",
     "last_name": "jones",
     "bar_name": "oakgrovetavern",
     "email": "oakgrovetavern@gmail.com",
     "authentication_token": "mNJ6-zeUKTXbi6cVWyaj"
    }
}
```

##**sign in**

####Request

`POST /users/sign_in`

```json
"user": {
     "email": "oakgrovetavern@gmail.com",
     "password": "password",
     "authentication_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`Status: 200 OK`

sign in a user and returns the following...

```json
{
"user": {
     "id": "1",
     "first_name": "will",
     "last_name": "jones",
     "bar_name": "oakgrovetavern",
     "email": "oakgrovetavern@gmail.com",
     "authentication_token": "mNJ6-zeUKTXbi6cVWyaj"
    }
}
```

##**create a beer**

####Request

`POST /users/:id/beers`

```json
{
"beer": {
     "beer_name": "budweiser",
     "beer_type": "lager",
     "weight": "130",
     "keg_weight": "160",
     "keg_number": "1"
    }
}
```

####Response
`Status 201 Created`

a user can add a beer

```json
{
"beer": {
     "id": 1,
     "name": "budweiser",
     "type": "lager",
     "weight": "130",
     "keg_weight": "160",
     "keg_number": "1"
    }
}
```



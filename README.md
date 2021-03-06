## Inventory-Assist

## API End Point

<strong>https://bar-butler.herokuapp.com</strong>

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
               edit_user PUT    /users/:id(.:format)             users#edit
            destroy_user DELETE /users/:id(.:format)             users#destroy
           new_user_beer POST   /users/:id/beers(.:format)       beers#create
              user_beers GET    /users/:id/beers(.:format)       beers#index
               user_beer GET    /users/:id/beers/:id(.:format)   beers#show
          edit_user_beer PUT    /users/:id/beers/:id(.:format)   beers#edit
       destroy_user_beer DELETE /users/:id/beers/:id(.:format)   beers#destroy
         new_user_liquor POST   /users/:id/liquors(.:format)     liquors#create
            user_liquors GET    /users/:id/liquors(.:format)     liquors#index
             user_liquor GET    /users/:id/liquors/:id(.:format) liquors#show
        edit_user_liquor PUT    /users/:id/liquors/:id(.:format) liquors#edit
     destroy_user_liquor DELETE /users/:id/liquors/:id(.:format) liquors#destroy
                    root GET    /                                users#show
```

#Users

##**sign up/create user**

####Request

`POST /users`

```json
"user": {
  "first_name": "will",
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
     "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
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

##**log out**

####Request

`DELETE /users/sign_out`

signs a user out. Does not return any response

##**create a beer**

####Request

`POST /users/:id/beers`

```json
{
"beer": {
     "beer_name": "budweiser",
     "beer_type": "lager",
     "weight": "130",
     "keg_weight": "30",
     "keg_number": "1"
    }
}
```

####Response
`Status 201 Created`

user can add a beer

```json
{
"beer": {
     "id": 1,
     "name": "budweiser",
     "type": "lager",
     "weight": "130",
     "keg_weight": "30",
     "keg_number": "1"
    }
}
```

##**find a specific beer for a user**

####Request

`GET /users/:id/beers/:id`

```json
{
    "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`200 OK`

returns a specific beer for a user

```json
{
"beer": {
     "id": 3,
     "name": "420",
     "type": null,
     "weight": null,
     "keg_weight": "30",
     "keg_number": null
    }
}
```

##**list all beers**

####Request

`GET /users/:id/beers`

```json
{
    "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`200 OK`

shows a user's list of beers...

```json
{
    "beers": [
          {
             "id": 1,
             "name": "bud_light",
             "type": null,
             "weight": null,
             "dry_at": null,
             "keg_weight": null,
             "keg_number": null
          },
          {
             "id": 2,
             "name": "budweiser",
             "type": null,
             "weight": null,
             "dry_at": null,
             "keg_weight": 30,
             "keg_number": null
          },
          {
             "id": 3,
             "name": "420",
             "type": null,
             "weight": null,
             "dry_at": null,
             "keg_weight": 30,
             "keg_number": null
          }
    ]
}
```

##**user can edit a beer**

####Request

`PUT /users/:id/beers/:id`

```json
{
"beer": {

     "weight": "130"

    }
}
```

####Response
`200 OK`

shows the updated weight of the beer and calculates the time remaining until the keg is empty...

```json
{
"beer": {
     "name": "budweiser",
     "type": "lager",
     "weight": "100",
     "dry_at": "about 20 hours",
     "keg_weight": "30",
     "keg_number": "1"
    }
}
```

##**allows a user to delete a beer**

####Request

`DELETE /users/:id/beers/:id`

```json
{
    "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`200 OK`

user deletes a specific beer

```json
{
    "message": "Beer successfully deleted"
}
```

##**create a liquor**

####Request

`POST /users/:id/liquors`

```json
{
"liquor": {
       "liquor_name": "absolute",
       "liquor_type": "vodka",
       "bottle_count": 24
      }
}
```

####Response
`201 Created`

a user can add a liquor

```json
{
"liquor": {
       "id": 1,
       "name": "absolute",
       "type": "vodka",
       "bottle_count": 24
      }
}
```

##**find a specific liquor**

####Request

`GET /users/:id/liquors/:id`

```json
{
    "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`200 OK`

returns a specific liquor

```json
{
"liquor": {
       "id": 3,
       "name": "Captain Morgan",
       "type": "rum",
       "bottle_count": 24
      }
}
```

##**list all liquors**

####Request

`GET /users/:id/liqours`

```json
{
    "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`200 OK`

shows a user's list of liqours...

```json
{
    "liquors": [
           {
            "id": 1,
            "name": "absolute",
            "type": "vodka",
            "bottle_count": 24
           },
           {
            "id": 2,
            "name": "Jack Daniel's",
            "type": "whiskey",
            "bottle_count": 24
           },
           {
            "id": 3,
            "name": "Captain Morgan",
            "type": "rum",
            "bottle_count": 24
           },
           {
            "id": 4,
            "name": "Bacardi",
            "type": "rum",
            "bottle_count": 24
           }
    ]
}
```
##**user can edit a liquor**

####Request

`PUT /users/:id/liquors/:id`

```json
{
"liquor": {

       "bottle_count": 20

      }
}
```

####Response
`200 OK`

user updates a liquor

```json
{
"liquor": {
       "id": 3,
       "name": "Captain Morgan",
       "type": "rum",
       "bottle_count": 20
      }
}
```

##**a user can delete a liquor**

####Request

`DELETE /users/:id/liquors/:id`

```json
{
    "auth_token": "mNJ6-zeUKTXbi6cVWyaj"
}
```

####Response
`200 OK`

user deletes a specific liquor

```json
{
    "message": "Liquor successfully deleted"
}
```








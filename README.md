## Inventory-Assist

## API End Point

<strong>https://inventory-assist.herokuapp.com</strong>

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


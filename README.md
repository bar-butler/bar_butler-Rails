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

creates a user, returns a success message, email, bar name, and authentication token.

```json
{
"user": {
     "authentication_token": "mNJ6-zeUKTXbi6cVWyaj"
    }
}
```
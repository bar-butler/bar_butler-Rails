## Inventory-Assist

## API End Point

<strong>https://inventory-assist.herokuapp.com</strong>

#Users

##**sign up/create user**

####Request

`GET /users/sign_up`

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
Dart Web Server
        Get all users
        GET
        http://127.0.0.1:4000/get

            [
            {"id": "","name":"X","age":11,"photo_url":"http://xyz.png"},
            ...
            ]
        
        Add new user
        POST
        http://127.0.0.1:4000/add
            body => {"addUser":{"name": "",...}}

        Update a user
        POST
        http://127.0.0.1:4000/update
            body => {"updateUser":{"id":"","name":"",...}}

        Delete a user
        DELETE
        http://127.0.0.1:4000/delete
            body => {"deleteUser":{"id":""}}

# Ruby on Rails REST API The Complete Guide

## Notes

### Request types
1. GET (index, show)  -----------------------------------> Get data about object
2. POST (create)      -----------------------------------> Create object with data sent
3. PUT/PATCH (update) -----------------------------------> Update existing object
4. DELETE (destroy)   -----------------------------------> Delete the object

### HTTP Codes
- `200` -> `:ok` -> **success message for GET requests**
- `201` -> `:created` -> **resource successfully created**
- `204` -> `:no_content` -> **usually for update & destroy actions**
- `401` -> `:not_authorized` -> **no authentication or invalid one**
- `403` -> `:forbidden` -> **one has no permission for this action**
- `404` -> `:not_found` -> **the requested resource can't be found**
- `422` -> `:unprocessable_entity` -> **the processed resource is invalid**
local table = require 'jsonschema'
jsonschema = [[{
    "$schema": "http://json-schema.org/schema#",
    "name": "Product",
    "type": "object",
    "properties": {
      "id": {
        "type": "number",
      },
      "name": {
        "type": "string",
      },
      "price": {
        "type": "number",
      },
      "tags": {
        "type": "array",
        "items": {
          "type": "string"
        }
      },
      "stock": {
        "type": "object",
        "properties": {
          "warehouse": {
            "type": "number"
          },
          "retail": {
            "type": "number"
          }
        }
      }
    }
  }]]

  x = table.tostring(table.fromJsonSchema(jsonschema))
  print(x)
%dw 2.0
output application/json

fun validate(data) = data map {
  id:$.id,
  errors:$.payload.errors,
  success:$.successful
}
---
if (isEmpty((validate(payload.items) filter ($.errors == null)))) 

{
  message: "Request was successful."
} else 

{
  message: "Request was not successful"
}
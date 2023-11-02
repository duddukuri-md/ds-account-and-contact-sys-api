%dw 2.0
output application/json
---
{
  "type": p('error.response.code'),
  "title": p('http.response.bad.request.title'),
  "detail": error.description,
  "time": now(),
  "traceId": correlationId
}

%dw 2.0
output application/json skipNullOn="everywhere"
---
payload map ((item, index) -> {
  "ContactID": item.Contact_Id__c,
  "Name": item.Name,
  "personalEmail__c": item.Email,
  "Active__c": item.active__c,
  "BillingAddress": item.BillingAddress__c,
  "Description": item.Description,
  "LastModifiedDate": item.LastModifiedDate
} )
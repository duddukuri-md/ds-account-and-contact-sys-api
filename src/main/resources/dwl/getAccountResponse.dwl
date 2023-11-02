%dw 2.0
output application/json skipNullOn="everywhere"
---
payload map ((item, index) -> {
  "AccountID": item.Id,
  "Name": item.Name,
  "AccountNumber": item.Account_Id__c,
  "accountEmail__c": item.Email,
  "Active__c": item.Account_Email__c,
  "BillingAddress": item.Billing_Address__c,
  "Description": item.Description,
  "LastModifiedDate": item.LastModifiedDate
} )
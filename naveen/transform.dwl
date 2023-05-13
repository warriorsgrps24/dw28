%dw 2.0
output json
var invoices = [
{
"invoiceId": 1,
"amount": 100 },
{
"invoiceId": 2,
"amount": 200 },
{
"invoiceId": 3,
"amount": 300 }]
var allocations = [
{
"allocationId": 1,
"invoiceId": 1,
"allocationAmount": 50 },
{
"allocationId": 2,
"invoiceId": 1,
"allocationAmount": 50 },
{
"allocationId": 3,
"invoiceId": 2,
"allocationAmount": 100 },
{
"allocationId": 4,
"invoiceId": 2,
"allocationAmount": 100 },
{
"allocationId": 5,
"invoiceId": 3,
"allocationAmount": 150 },
{
"allocationId": 6,
"invoiceId": 3,
"allocationAmount": 150 }]
---
invoices map(item, index) -> {
invoiceId: item.invoiceId,
amount: item.amount,
allocations: allocations filter ((item1, index1) -> item1.invoiceId == item.invoiceId)
}

//concatinating two variables using map and by using filter functions merging based on invoiceid


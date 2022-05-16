use AP

--16 #1

select top 10 VendorID, VendorName, VendorPhone, VendorPhone
from vendors

--16 #2

select top 10 VendorID, VendorName, ISNULL(VendorPhone, 'No-Phone') as VendorPhone, ISNULL(VendorPhone, 'No-Phone') as VendorPhone
from vendors

--16 #3

select top 10 VendorID, VendorName, ISNULL(VendorPhone, 'No-Phone') as VendorPhone, ISNULL(VendorPhone, 'No-Phone') as VendoPhone
from vendors
where VendorPhone is not null

--16 #4

select top 10 VendorID, VendorName, ISNULL(VendorPhone, 'No-Phone') as VendorPhone, substring(VendorPhone, 2, 3) as [Area Code],
substring(VendorPhone, 7, 3 ) as [Office Prefix], substring(VendorPhone, 11, 4) as [Line Number]
from vendors
where VendorPhone is not null

--16 #5

select top 10 v.VendorID, VendorName, InvoiceID, InvoiceTotal, InvoiceDate, datepart(year,InvoiceDate) as [Year],
datepart(month,InvoiceDate) as [Month], datepart(day,InvoiceDate) as [Day]
from vendors v
join Invoices  i on v.VendorID = i.VendorID
order by v.VendorID 

--16 #6

select top 10 v.VendorID, VendorName, InvoiceID, InvoiceTotal, InvoiceDate, convert(varchar,InvoiceDate) as [Month, DD, Year]
from vendors v
join Invoices  i on v.VendorID = i.VendorID
order by v.VendorID 

--16 #7

select top 10 v.VendorID, VendorName, InvoiceID, InvoiceTotal, convert(varchar,InvoiceDate) as InvDateShort
, datediff(day, '01/01/2016', InvoiceDate) as [Days Since 1/1/2016]
from vendors v
join Invoices  i on v.VendorID = i.VendorID
order by v.VendorID 


use AP
select * from vendors
select * from Invoices
select * from Terms
select * from ContactUpdates
select * from GLAccounts
select * from InvoiceArchive
select * from InvoiceLineItems

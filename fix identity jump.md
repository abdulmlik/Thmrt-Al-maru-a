https://www.youtube.com/watch?v=ARGOwea5ZHM

https://www.youtube.com/watch?v=NC3UsqcKZ2g

SOLUTION
1. if you are using SQL server 2012 or 2014 run configuration manager and right click on SQL Server go to the properties. click on startup parameters tab and write T272 and click add, apply and OK.

2. Run SQL Server 2017 and go to new query. write the command and click execute
	-  ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE=OFF;
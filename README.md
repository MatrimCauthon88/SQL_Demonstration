# SQL_Demonstration

## Introduction

This project shows basic SQL skills as well as how SQL can be used with Python coding language to create visuals to answer questions. This demonstration uses credit card transactions to show how a database, tables within the database, and views can be created. It will also show how csv files can be imported, queries can be done, both with joins and without joins,  as well as how Python can be used with SQL to create some visuals to answer some questions. For this demonstration we are using PostgreSQL, which utilizes pgAdmin to run. 


## Database Creation

We used https://app.quickdatabasediagrams.com/#/ to create our Entity Relationship Diagram or ERD. There are three models that one can use when creating an ERD. The first and most basic ERD model is caled a conceptual model. This model really only contains the table names in a database. It can also be created to show relationships between the tables if you wanted to.

Conceptual ERD

![Conceptual ERD Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Conceptual_ERD.PNG)



The next kind of ERD model is called a logical model. A logical model is more complex, it contains everying the conceptual model has, but also includes tables name, the definition of primary keys, and defines foreign keys in tables if they have one.

Logical ERD

![Logical ERD Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Logical_ERD.PNG)



The final kind of ERD model is called a Physical model. A physical model takes it a step further by definig the data type for each column and stating the type of relationship thet exists between the table when identifying foreign keys when necessary.

Physical ERD

![Physical ERD Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Physical_ERD.PNG)



Now that our database has a physical model, which we used our data files to create, we can export this physical ERD to PostgresSQL.

![Exporting to PostgreSQL Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Exporting_to_PostgreSQL.PNG)



Once we have export to PostgreSQL a file will download that we can open in a program such as VS Code. This will look somethin like this:

![VS Code Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Exported_ERD_SQL_Code.PNG)



We can use a the find and replace feature in VS code to remove all of the double quotation marks in the file and then copy and past the code into pgAdmin allowing us to execute the code.

![pgADMIN Table Creation Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Created_Tables_in_pgAdmin.PNG)



Now that the tables have been successfully created, we need to refresh our database so that they are displayed under the Schema section in pgAdmin. We can right click on a table and select the Import/Export option to now upload our CSV files to our database.

![Importing CSV Files Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Importing_CSV_Files.PNG)



We can run the following coed, one line at a time by highlighting each line and clicking run, to ensure that our CSV files uploaded correctly.

![Checking Uploads Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Confirm_Import_of_CSV_Files.PNG)

Now that our database has been created and all CSV files have been uploaded we can move on to our queries.



## Queries

Since this demonstration is using credit card transactions, we will be demonstrating how SQL, as well as Python, can be used to spot fradulant charges. The queries we will be doing are grouping all transactions by card holder, looking for the 100 highest transactions between the hours of 7 and 9 a. m., counting the total number of micro transactions, that is transactions that are less than $2.00, displaying all transactions that micro transactions, and looking at the top 5 merchants that have the most micro transactions. We will also be creating views of our queries.

The reason we are looking at micro transactions is because fraudsters will "hack" a credit card by making several small payments, which may go unoticed or be ignored by card holders.

### Query 1-Grouping Transactions by Card Holder

![Transactions by Card Holder Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_Isolate_by_Cardholder.PNG)

### Query 2-100 Highest Morning Transactions

![Highest Morning Transactions Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_100_Highest_Between_7_%26_9.PNG)

### Query 3-Count of Micro Transactions

![Micro Transactions Count](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Count_Transactions_Under_%242.PNG)

### Query 4-Listing All Micro Transactions

![List of Micro Transactions](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_Looking_For_Evidence_of_Fraud.PNG)

### Query 5-Top 5 Merchants with Micro Transactions

![Top 5 Merchants Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_Top_5_Merchants_Hacked.PNG)
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



Group the transactions by Card Holder allows us to keep a record of all transactions that have happened in case there is a dispute or if we wanted to explore any charge disputes in case of fraud.



### Query 2-100 Highest Morning Transactions

![Highest Morning Transactions Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_100_Highest_Between_7_%26_9.PNG)



Looking at the transactions from morning time allows to llok for some possible suspucious activity. The top 12 results from this query are for $100 or more with the top reslut being $1,894. In contrast result 13 is $23.13. These top 12 results, even though they are not micro transactions could be a sign of fraud.



### Query 3-Count of Micro Transactions

![Micro Transactions Count](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Count_Transactions_Under_%242.PNG)



By counting micro transactions, we can get an idea of how many transactions might be from a hacked credit card.



### Query 4-Listing All Micro Transactions

![List of Micro Transactions](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_Looking_For_Evidence_of_Fraud.PNG)



Listing all the micro transactions allows us to have all the transactions that be from hacked crdit cards with the time and date of the transaction, as well as the amount and card number. This would make it easier to investigate possible fraudulent activity.



### Query 5-Top 5 Merchants with Micro Transactions

![Top 5 Merchants Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_Top_5_Merchants_Hacked.PNG)



Looking at the top 5 merchants with micro transactions we can keep an eye on any future transactions from these merchants to potentially spot fraudulent activity.

Now that are queries have given us the results we are looking for we can create views of them in pgAdmin. Creating a view allows us to run the query again without having to type out all the code to execute. This is essentially saving a query to be run at another time should we choose to do so.

![Creating Views Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Creating_Views_in_pgAdmin.PNG)



## SQL and Python

We can use Python coding language inconjunction with PostgreSQL to conduct queries and create visuals in order to conduct analysis and draw conclusions, which we will discuss later.

In order to use PostgreSQL with Python, first need to import some libraries and establish a connection with PostgreSQL. For this demonstration we are using Jupyter Notebook.

![Library Import Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Connecting_to_PostgresSQL.PNG)



Here we import pandas, plotly express, hvplot, and the one that allows us to coonect to PostgreSQL, sqlalchemy. The next thing we need to do is to create a query in python. 

![Query in Python Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_and_Plot_Code.PNG)



Here we create a query for the card holder id's of 2 and 18. We look at the card holder id column from the card holder table, and the date and amount column, both from the transaction table. We also join the transaction, credit card, and card holder tables. Lastly we order this by hour. We also create a plot graph for card holder 2.

Next we create the plot graph for card holder 18 and then combine the two plots together.

![Card Holder 18 Plot](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Plot_Code_for_Card_Holder_18.PNG)

![Combing the Two Plots Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Combine_Plot_Code.PNG)



Now we are going to create another query for a different question that we will discuss later. This query will being looking a all the transactions for card holder 25 for the months January thru June. It will only have the columns for the month, the day of that month, and the amount, all which we use the transaction table to create. We also convert the months from number format to word format.

![Card Holder 25 Query Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Query_Code_for_Card_Holder_25.PNG)



Lastly we create a box plot graph using plottly express for analysis that we will discuss later.

![Box Plot Code Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Code_for_Box_Plot.PNG)



## Analysis and Conclusion

One thing that we want to examine with card holder 2 and card holder 18 is fradualent activity. We can use the graphs we created erlier to look at the two and see if their is any fraudulant activity.

![Card Holder 2 Plot Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Card_Holder_2_Plot.PNG)



![Card Holder 18 Plot Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Card_Holder_18_Plot.PNG)



![Combined Plot Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Combined_Plot.PNG)



Based on this combined image of the two graphs, we see that card holder 18 has several spikes in their spending compared to card holder two. These spikes could be a sign of fraud and would merit some further investigating into to determine if they are indeed fraudulant.



With card holder 25, we are again looking for signs of Fraud. Here is the box plot we created for card holder 25.

![Box Plot Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Box_Plot.PNG)



Based on this box plot we can see that there are some outliers during every month, with the exception of February. This again could be an indication of fraudulent activity on the card and further investigation would be need to determine if it is indeed fraud.



In conclusion, SQL can be used to create databases, tables, queries, and views. In this particular demonstration our goal was looking for fraudulent credit card transactions to determine if any credit card had been hacked. We can also take it a step further and use SQL in conjunction with Python coding language to connect to SQL databases, create queries, and create visuals to help with analysis and drawing conclusions. This makes SQL and Python really powerful tools when it comes to databases.
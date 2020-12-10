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

[VS Code Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Exported_ERD_SQL_Code.PNG)










We can use a the find and replace feature in VS code to remove all of the double quotation marks in the file and then copy and past the code into pgAdmin allowing us to execute the code.

[pgADMIN Table Creation Image](https://github.com/MatrimCauthon88/SQL_Demonstration/blob/main/Images/Created_Tables_in_pgAdmin.PNG)
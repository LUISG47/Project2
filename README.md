# Project 2


It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.


## Instructions

Instructions
The instructions for this mini project are divided into the following subsections:

+ Create the Category and Subcategory DataFrames
+ Create the Campaign DataFrame
+ Create the Contacts DataFrame
+ Create the Crowdfunding Database


## Create the Category and Subcategory DataFrames

1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

+ A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
+ A "category" column that contains only the category titles
+ The following image shows this category DataFrame:





2. Export the category DataFrame as category.csv and save it to your GitHub repository.

3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

+ A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
+ A "subcategory" column that contains only the subcategory titles
+ The following image shows this subcategory DataFrame:




4. Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.




## Create the Campaign DataFrame

1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

+ The "cf_id" column
+ The "contact_id" column
+ The "company_name" column
+ The "blurb" column, renamed to "description"
+ The "goal" column, converted to the float data type
+ The "pledged" column, converted to the float data type
+ The "outcome" column 
+ The "backers_count" column
+ The "country" column
+ The "currency" column
+ The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
+ The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
+ The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
+ The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
+ The following image shows this campaign DataFrame:






2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.


   

## Create the Contacts DataFrame

1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
+ Option 1: Use Python dictionary methods.
+ Option 2: Use regular expressions.

2. If you chose Option 1, complete the following steps:
+ Import the contacts.xlsx file into a DataFrame.
+ Iterate through the DataFrame, converting each row to a dictionary.
+ Iterate through each dictionary, doing the following:
++ Extract the dictionary values from the keys by using a Python list comprehension.
++ Add the values for each row to a new list.
+ Create a new DataFrame that contains the extracted data.
+ Split each "name" column value into a first and last name, and place each in a new column.
+ Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

3. If you chose Option 2, complete the following steps:
+ Import the contacts.xlsx file into a DataFrame.
+ Extract the "contact_id", "name", and "email" columns by using regular expressions.
+ Create a new DataFrame with the extracted data.
+ Convert the "contact_id" column to the integer type.
+ Split each "name" column value into a first and a last name, and place each in a new column.
+ Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

4. Check that your final DataFrame resembles the one in the following image:


## Create the Crowdfunding Database

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.

We used www.quickdatabasediagrams.com to make the Diagram based on the following Entity-relationship schema:

![QuickDBD-Crowdfunding](https://github.com/user-attachments/assets/25061319-dd13-4ca1-b61d-b0bc90879345)

2. Use the information from the ERD to create a table schema for each CSV file.
Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4. Create a new Postgres database, named crowdfunding_db.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each.

Here is how the tables should be displayed:

Table campaign:

![Screenshot 2025-01-12 at 1 11 50 p m](https://github.com/user-attachments/assets/cc8fdca1-0faf-4c18-a5c7-ab4b90dbaf6f)

Table category:

![Screenshot 2025-01-12 at 1 03 38 p m](https://github.com/user-attachments/assets/390bd307-7e15-49f6-9c5b-dcbdca14b685)


Table subcategory:

![Screenshot 2025-01-12 at 1 03 20 p m](https://github.com/user-attachments/assets/f8a8db3e-e212-4491-b47a-88d4feec50c9)

Table contacts:

![Screenshot 2025-01-12 at 1 02 34 p m](https://github.com/user-attachments/assets/0576e719-9a31-4af5-8ec0-5e67e9baf415)

## EXTRA


Additionaly we created some tables to see that joining the tables to some purposes will be effective with this code :

![Screenshot 2025-01-12 at 1 29 46 p m](https://github.com/user-attachments/assets/9632bfa7-7bdd-4ff4-8624-0510a866be2f)


For example we joined all the tables putting the outcome of the campaign as successfull and ordering by the amount pledged from highest to lowest displaying only the first 10 results

The result should look as follows:


![Screenshot 2025-01-12 at 1 26 24 p m](https://github.com/user-attachments/assets/60ad9721-b849-4870-83b5-e763106c2453)

Now on the same joins but ordering the outcome of the campaign as failed and sorting it by the amount pledged from highest to lowest:
(Please check file crowdfunding_db_analysis.sql for code of the table)

The result should look as follows:

![Screenshot 2025-01-12 at 2 17 16 p m](https://github.com/user-attachments/assets/c718b923-f657-4f19-878a-f6cfea92ffb7)


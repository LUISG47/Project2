# Project 2-CrowdfundingETL

For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.


## Group Members:

[Dariana Ibarra](https://github.com/darianaibarra)   
[Luis Galíndez](https://github.com/LUISG47)   


## Instructions

The instructions for this mini project are divided into the following subsections:

+ Create the Category and Subcategory DataFrames
+ Create the Campaign DataFrame
+ Create the Contacts DataFrame
+ Create the Crowdfunding Database


## Create the Category and Subcategory DataFrames

1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
(The crowdfunding.xlsx is stored on the folder resources, please make sure to target the file in the proper route format)

+ A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
+ A "category" column that contains only the category titles
+ The following image shows how the category DataFrame should look like:

![Screenshot 2025-01-12 at 3 21 00 p m](https://github.com/user-attachments/assets/733d3ff4-f191-4d9b-a485-1d7abea72971)


2. Export the category DataFrame as category.csv and save it to your GitHub repository. 

3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

+ A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
+ A "subcategory" column that contains only the subcategory titles
+ The following image shows how the subcategory DataFrame should look like:

![Screenshot 2025-01-12 at 3 21 09 p m](https://github.com/user-attachments/assets/d4c6e49f-3671-4ac8-8d7a-94f53dc89b94)


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
+ The following image shows how the campaign DataFrame should look like:


![Screenshot 2025-01-12 at 3 23 02 p m](https://github.com/user-attachments/assets/bfb53d22-f4ec-4af8-8e74-e5fc2314b1ea)



2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

## Create the Contacts DataFrame

1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
(The contacts.xlsx is stored on the folder resources, please make sure to target the file in the proper route format)
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

![Screenshot 2025-01-12 at 3 23 50 p m](https://github.com/user-attachments/assets/71e0f6d8-ed28-48b9-9f3b-21702d276c42)



## Create the Crowdfunding Database

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.

We used www.quickdatabasediagrams.com to make the Diagram based on the following Entity-relationship schema:

![QuickDBD-Crowdfunding (4)](https://github.com/user-attachments/assets/a4d08158-7e86-4974-bcaf-f8fd11a3782b)


2. Use the information from the ERD to create a table schema for each CSV file.
Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4. Create a new Postgres database, named crowdfunding_db
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.

When importing the CSV files make sure that you actiavte the headers tab (see the following image)

![Screenshot 2025-01-12 at 12 58 49 p m](https://github.com/user-attachments/assets/a12e0425-ad2a-4ba1-b86e-5b69a13ce82c)

If the process was done correctly you should get two green confirmations that the table data was imported correcly:

![Screenshot 2025-01-12 at 3 40 26 p m](https://github.com/user-attachments/assets/8e46d176-a06c-4a6b-b472-bd8bc39c7e15)


8. Verify that each table has the correct data by running a SELECT statement for each.

Here is how the tables should be displayed (see that they match the Pandas Dataframes created before):

Table category:

![Screenshot 2025-01-12 at 1 03 38 p m](https://github.com/user-attachments/assets/390bd307-7e15-49f6-9c5b-dcbdca14b685)


Table subcategory:

![Screenshot 2025-01-12 at 1 03 20 p m](https://github.com/user-attachments/assets/f8a8db3e-e212-4491-b47a-88d4feec50c9)

Table campaign:

![Screenshot 2025-01-12 at 1 11 50 p m](https://github.com/user-attachments/assets/cc8fdca1-0faf-4c18-a5c7-ab4b90dbaf6f)

Table contacts:

![Screenshot 2025-01-12 at 1 02 34 p m](https://github.com/user-attachments/assets/0576e719-9a31-4af5-8ec0-5e67e9baf415)

## EXTRA

Additionaly we created some tables to see that joining the tables to some purposes qould be effective to get important information.

TABLE 1:

For example we joined all the tables putting the outcome of the campaign as successfull and ordering by the amount pledged from highest to lowest displaying only the first 10 results
(Please check file crowdfunding_db_analysis.sql for code of the table)

The result should look as follows:


![Screenshot 2025-01-12 at 1 26 24 p m](https://github.com/user-attachments/assets/60ad9721-b849-4870-83b5-e763106c2453)

TABLE 2:

Now on the same joins but ordering the outcome of the campaign as failed and sorting it by the amount pledged from highest to lowest:
(Please check file crowdfunding_db_analysis.sql for code of the table)

The result should look as follows:

![Screenshot 2025-01-12 at 2 17 16 p m](https://github.com/user-attachments/assets/c718b923-f657-4f19-878a-f6cfea92ffb7)


TABLE 3:

This tables now groups the campaigns by category and shows the top 10 successfull campaigns grouped by category
(Please check file crowdfunding_db_analysis.sql for code of the table)

The result should look as follows:

![Screenshot 2025-01-12 at 2 43 06 p m](https://github.com/user-attachments/assets/3713ac96-5671-4194-b0a3-f1fd6bb7d78f)


TABLE 4:

This tables now groups the campaigns by category and shows the top 10 failed campaigns grouped by category
(Please check file crowdfunding_db_analysis.sql for code of the table)

The result should look as follows:

![Screenshot 2025-01-12 at 2 46 40 p m](https://github.com/user-attachments/assets/5e46ca47-08be-4634-8a37-1141649d6ebc)


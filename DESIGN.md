# Design Document

By YOUR NAME HERE
KIRAN JAIS CHEMMANATTE
Video overview: <https://youtu.be/6mHQR1kOFLo>

## Scope

In this section you should answer the following questions:

* What is the purpose of your database?
The purpose of the database is to help determine which are the low income generating food items in a shop and which are the high income generating items in a entertainment store. Only looking at walk-in food and not food reversed by functions as that is of a separate menu.
* Which people, places, things, etc. are you including in the scope of your database?
The venues, food items being sold, the month and year that the items were sold , the type of the food item.
* Which people, places, things, etc. are *outside* the scope of your database?
Day wise sales data of the food, beverages sold, entertainment tickets sold.
## Functional Requirements

In this section you should answer the following questions:

* What should a user be able to do with your database?
Be able to rank the walk in food items interms of total number sold and total sales generated
* What's beyond the scope of what a user should be able to do with your database?
Obtain information on which sales person is responsible for which sale.
## Representation

### Entities

In this section you should answer the following questions:
![ER DIAGRAM]('img.png')
* Which entities will you choose to represent in your database?
Food item id, food item type, sales , quantity sold, year , period , venue
* What attributes will those entities have?
Food item id primary key int ,
food item type enum (function,walk-in,add-on)
sales Numeric
quantity sold Numeric
year Numeric
Period INT
venue Text
* Why did you choose the types you did?
Food items are of three types in this venue, based on implicit knowledge
* Why did you choose the constraints you did?
Food item id is unique, all sales generated have the other properties so nonw of the rows will
be null.
### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.

## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?
Views - containing only the walk in funtion food , partitioned on a period by period basis.
Index on sales and quantity sold.
## Limitations* Which optimizations (e.g., indexes, views) did you create? Why?
Views - containing only the walk in funtion food , partitioned on a period by period basis.
Index on sales and quantity sold.
## Limitations
* Which optimizations (e.g., indexes, views) did you create? Why?
Views - containing only the walk in funtion food , partitioned on a period by period basis.
Index on sales and quantity sold.
## Limitations
* Which optimizations (e.g., indexes, views) did you create? Why?
Views - containing only the walk in funtion food , partitioned on a period by period basis.
Index on sales and quantity sold.
## Limitations* Which optimizations (e.g., indexes, views) did you create? Why?
Views - containing only the walk in funtion food , partitioned on a period by period basis.
Index on sales and quantity sold.
## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
Some food items are added on certain months only inflating score of food intems in prior months
* What might your database not be able to represent very well?

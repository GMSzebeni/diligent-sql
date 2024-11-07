# Tasks

## Prepare the pets DB

1. Open the pgAdmin Desktop client or the Web interface.
2. Connect to the database according to the `README.md`.
3. Right click to `Databases`, select `Create...`.
4. Give a name to the database in the `Database` field, e.g. `pets`.
5. Right click to the created database `pets` and select `Query Tools`.
6. In the opened editor paste the content of the `pets.sql`.
7. Execute the query with the Execute script (▶️ "play") button.

To check if the data is inserted properly:

- Open `pets` db, `Schemas`, `public`, `Tables`.
- Right click on a table, e.g. `pets`, select `View/Edit data`, `All Rows`.

On a given database anytime you can open the `Query Tools` to execute queries
on the database.

## Task 0: Get familiar with the data structure

- Open the pets SQL. 
- What are the entities used in this data model?
- What tables are created?
- What are the relations between the tables (one, many...)?
- What kind of constrains provide these relations?

## Task 1: Insert, delete, update (Data manipulation)

Create queries to execute the following tasks.

Save the queries to the `task1.sql`.

- Add yourself to the database.
- Add your pet or your imaginary pet to the database.
- Your pet name is not respectful enough. Change it names by adding a "Mr." or "Ms." in front of it.
- Increase every pets' age if they are older than 5 years.
- Remove Simba from the database.

### Background material

- https://www.postgresql.org/docs/17/dml.html

## Task 2: Practice some basic queries (Data Query)

Create queries to execute the following tasks.

Save the queries to the `task2.sql`.

- Show only all pets' name, age and weight only.
- Order the previous list by pet age, the oldest pet should be the first.
- Order the list by age (oldest first), and if the two animal have the same age show the heaviest first.
- List 2nd, 3rd, 4th heaviest pet.
- Select only the pets if they are at least 5 years old and heavier than 5 kilos.
- Get all the unique owner IDs (use the pets table only for this).
- Find the pets who lives in the wild (does not have any owner). 


### Background material

- https://www.postgresql.org/docs/17/queries.html


## Task 3: Practice the joins (Data Query)

Create queries to execute the following tasks.

Save the queries to the `task3.sql`.

- Show the pet's kind's name next to the pet.
- Match made in heaven: Show the pet's owner's name next to the pet. Show only the pets who has an owner.
- Wild pets among us: Show the pet's owner's name next to the pet. Show those pets too who does not have an owner (but do not show the owners who does not have pets).
- Free/Lonely owners: Show the pet's owner's name next to the pet. Show those owners too who does not have a pet (but do not show the pets who does not have an owner).
- The matchmaking show: Show the pet's owner's name next to the pet. Show all the pets and owners even if they do not have owner/pet.

### Background material

- https://www.postgresql.org/docs/17/queries-table-expressions.html

## Task 4: Practice the grouping (Data query)

Create queries to execute the following tasks.

Save the queries to the `task4.sql`.

- Count how many pets we have.
- Count how many pets belongs to each kind. Show a counter and the kind name next to each other.
- Order the previous list by count, ascending.
- Measure the summarized weight of each kind. Show the sum of the weight and the kind's name next to each other.
- Show only the kinds from the previous list where the summarized weight is heavier than 10 kg.
- Find out the pet lady/lord! Find the owner who has the most pets. Show only their name, and the number of pets.
- Find out the *cat* lady/lord! Find the owner who has the most *cats.* Show only their name, and the number of *cats*.
- Count the average age by of the pet's grouped by owner.

### Background material

- https://www.postgresql.org/docs/17/queries-table-expressions.html#QUERIES-GROUP

## Task 5: Demo: Plan together the movie database

We have the following use case (it can be familiar from the API planning task):

- We have to create an database model for our movies API.
- We want to store the movie's title, the main genre, plot, release date and of course the actors.
- The information we want to store for an actor: name, the born date, the born location and their height.
- Each movie and actor has a unique numeric ID.

## Task 6: Define the tables for the movie database

Work in the `task6.sql`.

- Define first the tables and add their columns, take care of the column's types.
- Take care of the primary keys.
- Define the foreign keys, create conjunction tables if needed.
- The foreign keys defines constrains. The tables should be filled data with the proper order. Figure out this order.
- Execute the SQL you created to define the tables.

### Background materials

- https://www.postgresql.org/docs/17/ddl-basics.html
- https://www.postgresql.org/docs/17/ddl-constraints.html#DDL-CONSTRAINTS-FK
- https://www.postgresql.org/docs/17/datatype-datetime.html


## Task 7: Use ChatGPT to create example data

Work in `task7.sql`.

- Fill the table with data with the help of ChatGPT. You can give it your schema.
- Generate about 20 entries of the movies and 40 entries of actors.

## Task 8: Demo: Check the performance of a query

First load some example data which is large enough:

Pagila DB is a sample data for a fictional DVD rental store. Pagila includes tables for films, actors, film categories, stores, customers, payments, and more.

- Create the "Pagila" db: `npm run create-pagila-db`
- Load the data to "Pagila" db: `npm run load-pagila-data` 

These steps can help to analyze the result:
- Paste the results to the analyzer: https://explain.dalibo.com/plan
- What kind of nodes do you see, what is their hierarchy?
- Where was the most execution time was spent?
- Where was the **row** estimation is significantly different from the actual?
- Are there any long running seq. scans with a lot of filtered result?

Analyze the following queries:
- List all films. Analyze the query.
- Search for the film titled "ALABAMA DEVIL", analyze the query.
- Repeat the previous search, but display only the title. Analyze the query.
- Remove the idx_title and repeat the search. Analyze the query.

- Search for the  films where the replacement cost is larger than 15 
  but less than 20. Analyze the query.
- Create an index for the replacement cost and repeat the query. Analyze the query.
- Sort the query by replacement cost. Analyze the query.


### Background material

- https://www.cybertec-postgresql.com/en/how-to-interpret-postgresql-explain-analyze-output/
- https://pganalyze.com/docs/explain/basics-of-postgres-query-planning

Deep dive:

- https://www.postgresql.org/docs/current/using-explain.html

## Task 9: Analyze the following queries in Pagila

- We want to get a customer's rental by a given customer Id. Create a query and analyze.
  - What search method(s) are figured out by the planner?
  - What is the initial planned cost (time) and the planned total cost of the selected method?
  - What are the actual initial and total costs.
  - How many rows removed by the filter?
- Add an index to the customer Id, analyze the query again.
  - What is changed in the search methods?
  - How does the costs are changed?
- We want to get also the customer's first name and the last name.
  - What planning nodes are produced by the join?




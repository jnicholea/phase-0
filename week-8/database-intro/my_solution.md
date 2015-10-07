1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name,population FROM states;
4. SELECT state_name,population FROM states
   ORDER BY population DESC;
5. SELECT state_name FROM states
   WHERE region_id=7;
6. SELECT state_name,population_density FROM states
   WHERE population_density>50 ORDER BY population_density ASC;
7. SELECT state_name FROM states
   WHERE population BETWEEN 1000000 AND 1500000; 
8. SELECT state_name,region_id FROM states
   ORDER BY region_id ASC;
9. SELECT region_name FROM regions
   WHERE region_name LIKE '%Central';
10. SELECT regions.region_name, states.state_name
   FROM states
   INNER JOIN regions
   ORDER BY region_id ASC;

*What are databases for?
	-Storing very large sets of data with varying relationships to each other
*What is a one-to-many relationship?
	-For the outfit example, outfits belong to Cher, and Cher has many outfits.
*What is a primary key? What is a foreign key? How can you determine which is which?
	-A primary key is the "id" for each individual table. A foreign key is a sort of identifier that links to the primary key of another table. 
How can you select information out of a SQL database? What are some general guidelines for that?
	-By using the language for SQL. Commands are written in uppercase, identities are in lower case. 


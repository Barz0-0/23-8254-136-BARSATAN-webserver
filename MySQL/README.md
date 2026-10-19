# MariaDB Activity 2: Relationships and Queries

**Name:** Dawn Blanche R. Barsatan
**Student ID:** 23-8254-136
**Course/Section:** CIT17 WEB INFORMATION SYSTEM 3H GROUP A

## Database
`school`

## Tables
* `students`
* `courses`
* `enrollments`

---

## Guide Questions & Answers

1. **What is a primary key?**  
   A primary key is a column or set of columns that uniquely identifies each row in a database table, ensuring no duplicate or null values exist for that identifier.

2. **What is a foreign key?**  
   A foreign key is a field in one table that links to the primary key of another table, establishing a relationship and enforcing referential integrity between them.

3. **Why is the enrollments table necessary?**  
   It serves as a junction (bridge) table that resolves the many-to-many relationship between students and courses, allowing one student to take multiple courses and one course to have multiple students without data redundancy.

4. **What is the purpose of the JOIN statement?**  
   The `JOIN` clause is used to combine and retrieve records from two or more tables based on a related column between them.

5. **What is the difference between WHERE and ORDER BY?**  
   `WHERE` is used to filter records before returning results based on specified conditions, whereas `ORDER BY` is used to sort the retrieved records in ascending (`ASC`) or descending (`DESC`) order.

6. **What does GROUP BY do?**  
   `GROUP BY` groups rows that share identical values in specified columns into summary rows, typically used alongside aggregate functions like `COUNT()`, `SUM()`, or `AVG()`.

7. **What does COUNT() do?**  
   `COUNT()` is an aggregate SQL function that returns the total number of rows matching a specified criterion.

8. **What happens if you try to insert an enrollment using a student_id that does not exist?**  
   MariaDB will reject the insertion and throw a Foreign Key Constraint violation error (`Cannot add or update a child row: a foreign key constraint fails`) because referential integrity prevents linking to a non-existent parent record.

9. **Why is database normalization important?**  
   Database normalization reduces data redundancy, eliminates data insertion/update/deletion anomalies, and improves data integrity by structuring data into logically related tables.

10. **What did you learn from this activity?**  
    Through this activity, I learned how to create relational databases using primary and foreign key constraints in MariaDB. I gained hands-on experience using a junction table (`enrollments`) to implement a many-to-many relationship between students and courses. Furthermore, I learned how to craft complex `JOIN` queries paired with `GROUP BY`, `ORDER BY`, and aggregate functions like `COUNT()` to extract meaningful reports from multiple tables.

---

## What I Learned
By completing this hands-on lab in GitHub Codespaces, I learned how relational databases organize multi-table structures using primary and foreign keys. I practiced creating junction tables to bridge many-to-many relationships, executing `JOIN` statements to query interconnected tables, and applying aggregate functions to extract database statistics.
# SQL 2: That seems redundant

## Description

Today, we talked a fair bit about databases and SQL. So, let's explore a bit more, shall we.

## Learning Objectives

* Create database tables
* Execute some SQL
* Understand a bit more about how databases _work_

## Details

### Deliverables

* [An issue in the class repo](https://github.com/tiy-indianapolis-ror-june2015/assignments/issues) titled `5.1 - SQL The Sequel -- YOUR NAME`.
* A gist containing the SQL commands run to accomplish the requirements.
* A link to that gist as comment in the aforementioned issue.
* Close the issue when complete and assign to me, @dummied

### Requirements

#### Normal Mode

* Using `sqlite3 classroom.sqlite3` to connect to the batabase, create a table of students.
* A student has an id, a first_name and a last_name.
* Said students will be the students in this class. Insert a record for each student.
* Write a query to return how many students are in the class.
* Write a query to return how many students in the class have a first name starting with the letter "D"
* Create a table of posts.
* A post should have an id, a title, a body, a summary and a student_id.
* I'd suggest you use the Posts from Surf-N-Paddle.
* The student_id for each should be an id from your student table (try to mix them up a bit rather than giving them all the same id)

#### Hard Mode

* Write a query that returns which student has written the most posts

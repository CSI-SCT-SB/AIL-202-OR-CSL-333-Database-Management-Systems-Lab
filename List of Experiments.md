

DATABASE MANAGEMENT SYSTEMS LAB (R5)
List of Experiments

1.	Design ER diagram for an application that models soccer teams by considering the games they play, and the players in each team. In the design, the following information are to be considered : 
• Set of teams, each team has an ID (unique identifier), name, main stadium, and to which city this team belongs.
• Each team has many players, and each player belongs to one team. Each player has a number (unique identifier), name, DoB, start year, and shirt number that he uses.
• Teams play matches, in each match there is a host team and a guest team. The match takes place in the stadium of the host team. 
• For each match we need to keep track of the following: 
•	The date on which the game is played 
•	The final result of the match 
•	The players participated in the match. For each player, how many goals he scored, whether or not he took yellow card, and whether or not he took red card. 
•	During the match, one player may substitute another player. We want to capture this substitution and the time at which it took place. 
• Each match has exactly three referees. Each referee  have an ID (unique identifier), name, DoB, years of experience. One referee is the main referee and the other two are assistant referee. 
Write details about the assumptions made for designing ER diagram. 

2.	Create the following Databases and insert values into tables using UI and SQL Commands. Also find queries for the questions given below.
a. Banking database
branch (branch-name, branch-city, assets)
customer (customer-name, customer-street)
loan (loan-number, branch-name, loan-amount)
borrower (customer-name, loan-number)
account (account-number, branch-name, balance)
depositor (customer-name, account-number)
i) Insert a new column customer-area to customer table.
ii) Change the data type of loan-amount to integer.
iii) Rename the attribute customer-area to customer-city.
b.	Employee database
Employee (employee-name, street, city)
works (employee-name, company-name, salary)
company (company-name, city, country)
manages (employee-name, manager-name)
i) Add  a new column Date_of_Joining to the Employee table.
ii) Delete the column country from the company table.

3.	Use the following banking database and find queries for the questions below  :

branch (branch-name, branch-city, assets)
customer (customer-name, customer-street, customer-city)
loan (loan-number, branch-name, loan-amount)
borrower (customer-name, loan-number)
account (account-number, branch-name, balance)
depositor (customer-name, account-number)
employee (employee-name, branch-name, dob, salary)

a.	Display details of all customers.
b.	Find bank accounts with a balance under 1000 rupees.
c.	Find names of customers whose city is in Bangalore.
d.	Find the number of tuples in the customer relation.
e.	List the street and city where John lives.
f.	List the customers whose names ends with letter ‘E’ and has exactly 4 characters.
g.	Find total number of customers who have taken a loan.
h.	Find the names of all customers whose street includes the substring ‘Nagar’.
i.	Find all employees whose salary is greater than 1400 and working branch is not ‘Mumbai’.
j.	 Calculate the average salary of all employees and show the average salary as “avg_salary”.
k.	 Find the account number and balance for all accounts from Kolkata branch where the balance is greater than 1000 Rupees. 
l.	 Find the name of all branches with assets between 10 lakhs and 25 lakhs.
m.	 Find the number of depositors for each branch.
n.	 Find the names of all customers who have both a loan and an account.
o.	 Find the names of all customers who have an account but no loan.
p.	 List in alphabetic order the names of all customers having a loan in   Delhi branch.
q.	 Find the names of all branches that have greater assets than some branch located in Bangalore.
r.	 List the name of employees who are born in January.
s.	 List the name of employees whose age is greater than 30.
t.	 Display month of birth of all employees.

4.	Consider the following relational schema, Give an expression in SQL for each of the following queries.
Employee(employee-name, street, city)
Works(employee-name, company-name, salary)
Company(company-name, city)
Manages(employee-name, manager-name)
a.	Find the names, street address and cities of residence for all employees who work for ‘UNIVERSAL Corporation’ and earn more than 10000 Rupees.
b.	Find the names of all employees in the database who live in the same cities as the companies for which they work.
c.	Find the names of all employees in the database who live in the same cities and on the same streets as do their managers.
d.	Find the names of all employees in the database who do not work for ‘ABC Corporation’. Assume that all people work for exactly one company.
e.	Find the names of all employees in the database who earn more than every employee of ‘GOOGLE Corporation’. Assume that all people work for at most one company.
f.	Assume that the companies may be located in several cities. Find all companies located in every city in which ‘ABC Corporation’ is located.
g.	Find the names of all employees who earn more than the average salary of all employees of their company. Assume that all people work for at most one company.
h.	Find the name of the company that has the smallest payroll. 
i.	Find the company that has the most employees.
j.	Find those companies whose employees earn a higher salary, on average, than the average salary at ‘GOOGLE Corporation

5.	Create a view with all course sections offered by the Physics dept in the Fall 2009 semester, with the building and room number of each section.
University database
classroom(building, room-number, capacity)
department(dept-name, building, budget)
course(course-id, title, dept-name, credits)
instructor(ID, name, dept-name, salary)
section(course-id, sec-id, semester, year, building, room-number, time-slot-id)
teaches(ID, course-id, sec-id, semester, year)

6.	Write PL/SQL code to enter radius from user and calculate the area of a circle. Write the radius as well as area into a table called circlearea. Also write PL/SQL code to calculate the area of the circle for values of radius ranging from 3 to 7.
7.	Write PL/SQL code that accepts an account number from user. If the user balance is less than minimum balance then deduct 100 Rupees from balance. This process is to be done on account table.
8.	Write PL/SQL code to obtain employee number. If employee number is present in the table, then display corresponding salary of employee along with the message ‘Employee record found’. Update the salary of employee having total salary less than Rs. 10000  by incrementing with Rs.1000. Display number of rows affected by this query.
9.	Write a procedure to find the minimum, sum and average of  2 numbers.
10.	Write a procedure that checks for employee having salary>10000 and give an increment of 6%. If more than one employee exists display the message ‘Too many employees’. If no such employees exist, display ‘No such employee’.
11.	Write a function to count the number of tuples in employee relation and return it.
12.	Declare a PL/SQL code that accepts an employee number from the user and if the employee number is present in the table then corresponding name and salary are displayed. If the employee is not in the table an exception should be raised which displays the message ‘no such employee’.
13.	Consider the schema employee(eid,ename,ecity,eage,company). Write a PL/SQL program that satisfies following conditions after accepting employee ID as input.
a) If eid=E01,then raise an exception to display corresponding city.
b) If eid=E05,then raise an exception to display corresponding country name.
c) Otherwise raise exception to display corresponding age.
14.  	Consider the following relation
Book (book_no,title,cost)
Circulation (userid,book_no,issuedate,returndate).
Create a trigger to do the following:
Insertion is possible in the book table if cost is greater than average cost of books available.
15. Write a package with function check_id to get an employee ID and check whether it is valid. Also include a procedure inc_sal to increment the salary of employees by 5% , if it is less than 10000.
16. Create a NoSQL restaurant database and Write a MongoDB query to display the fields restaurant_id, name, address and zip code, but exclude the field emp_id for all the documents in the collection restaurant. Also write a MongoDB query to find the restaurant name, longitude and latitude for those restaurants which contain 'gov' as first three letters of its name.
17. Write GUI Java program to create student database and insert  name into student table and also write a GUI Java program to retrieve marks from table student(rollno, marks) for a particular  rollno. Also give provision to modify the marks of a particular student and to display the rank list.
18.  Practice SQL TCL commands like Rollback, Commit, Savepoint.
19. Practice SQL DCL commands for granting and revoking user privileges.
20. Create an XML document that contains the markup tags such as <name>, <dept>, and <rno>.and create an XSL document that defines the style to display an XML document and load the XML document in the browser.





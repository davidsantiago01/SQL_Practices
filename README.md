# SQL_Subqueries Practice

### Project Overview 
To put in practice basic essentials from SQL (Select, where, from, group by, subqueries)

### Tools
- SQLite

### Data Sources
The primary database used for this analysis is Nortwind Sales tables containing 9 tables with different information (Categories, Customers, Employees, OrderDetails, Orders, Products, Shippers, Suppliers, sqLite_sequence)

The goal of this practice is to determine the top sales employees whose sales exceeded the average, and bottom sales employees whose sales did not exceeded the average

Steps to retrieve the top employees (those whose sales exceeded the average):

Select employee information
1. Retrieve the LastName and FirstName columns from the Employees table.

2. Calculate total units sold per employee
  Use a subquery to calculate the total quantity of products sold by each employee.
    - Join the Orders table with the Employees table using EmployeeID.

    - Join the OrderDetails table with the Orders table using OrderID.

    - Sum the Quantity column and name this result Unidades_totales.

3. Compare against the average
  Compare each employee’s total sales with the overall sales average.
    - Use an aggregate function (AVG) to calculate the average total quantity.

    - Ensure that the employee reference in this query is properly aliased to avoid conflicts with the first employee reference.
  
<img width="1104" height="681" alt="image" src="https://github.com/user-attachments/assets/b4de831a-03fa-41d0-af3f-450833641ce8" />

To retrieve the bottom employees, replace the > operator with < to identify those whose total sales fall below the overall average.

<img width="1170" height="757" alt="image" src="https://github.com/user-attachments/assets/f7e3fa25-29f1-4096-90df-a0df86b80f70" />

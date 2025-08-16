# -Library-Management-System-8

## 🛠 Tools Used
- MySQL Workbench / DB Browser for SQLite
- GitHub for version control

## 📄 Description

### ✅ SQL Features Demonstrated
1. **CREATE PROCEDURE** – Define reusable SQL logic with input parameters.
2. **CREATE FUNCTION** – Define reusable logic that returns a single value.
3. **IN Parameter** – Accepts input values in a procedure.
4. **RETURN** – Functions must return a value.
5. **CALL** – Executes a stored procedure.
6. **SELECT FunctionName()** – Executes a stored function.
   
**2. Stored Function: CountBooksByMember**
**Input:** memberID (integer)
**Output:** Returns total number of books issued by the member.

SELECT CountBooksByMember(1);

**📂 Files Included**
task8_procedures_functions.sql – SQL script with stored procedure and function.
README.md – This documentation.

**How to Use**
Load the schema from **Task 1** and data from **Task 2**.
Run task8_procedures_functions.sql to create the stored procedure and function.
Use CALL for procedures and SELECT for functions to test them.

**Key Learning Points**
**Procedures** can perform multiple operations and do not require a return value.
**Functions** must return a value and can be used directly in SELECT queries.
**IN/OUT parameters** allow passing values into or out of stored routines.
Stored routines improve modularity, reusability, and abstraction.
Functions are often used for **calculations**, while procedures handle **operations.**







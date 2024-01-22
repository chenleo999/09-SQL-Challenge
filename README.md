# 09-SQL-Challenge

completed by Li Chen    1/22/2024

part 1 - PostgreSQL

steps:
1. review 6 csv files and create table schema in proper order (employee/title/department -> salary/dept_emp/dept_manager)
2. import all 6 tables under lc schema
3. generate ERD, capture screen shot
4. export table create script (shemata) sql file
5. run sql query for requested analysis as below:
  List the employee number, last name, first name, sex, and salary of each employee.
  List the first name, last name, and hire date for the employees who were hired in 1986.
  List the manager of each department along with their department number, department name, employee number, last name, and first name.
  List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  List each employee in the Sales department, including their employee number, last name, and first name.
  List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
6. save sql file

part 2 - bonus (perform same set of analysis in pandas)

steps:
1. import pandas
2. read all 6 csv fils into dataframe
3. merge, filter dataframe properly
4. display columns requested
5. save bonus.ipynb file


part 3 - edit readme, git add, commit and push

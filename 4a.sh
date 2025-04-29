#!/bin/bash
EMP_FILE="employees.txt"
search_employee() 
{
    echo -n "Enter Employee Number to search: "
    read emp_no
    grep "^$emp_no " "$EMP_FILE"
}
display_empno_and_salary() 
{
    echo "Emp_No  Emp_Sal"
    awk '{print $1, $3}' "$EMP_FILE"
}
append_new_record() 
{
    echo -n "Enter Employee Number: "
    read emp_no
    echo -n "Enter Employee Name: "
    read emp_name
    echo -n "Enter Employee Salary: "
    read emp_sal

    echo "$emp_no $emp_name $emp_sal" >> "$EMP_FILE"
    echo "Record added successfully!"
}
while true; do
    echo ""
    echo "===== Employee Manager ====="
    echo "1. Search Employee by Emp_No"
    echo "2. Display Emp_No and Emp_Sal of All Employees"
    echo "3. Append New Employee Record"
    echo "4. Exit"
    echo "Choose an option: "
    read choice
    case $choice in
        1) search_employee ;;
        2) display_empno_and_salary ;;
        3) append_new_record ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid option. Try again." ;;
    esac
done

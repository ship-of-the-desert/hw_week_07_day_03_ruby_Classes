# Class Homework

#### Create an Employee class

- Initiate each `Employee` with their name, and level
- Each `Employee` starts with 20 days in their absence account.
- Create an `absent` method that subtracts the number of days that the employee skipped from their initial 20
- Create a `late` method that stores the number of times the employee was late to their late counter
    - Make every 3 lates count as 1 absence
- Each `Employee` starts with a 0 money balance
- Create an `add_balance` method that adds salary money to the `Employee`'s balance
    - Employee's salaries depends on their level:
        - A level 1 employee salary is 2000 riyals
        - A level 2 employee salary is 4000 riyals
        - A level 3 employee salary is 6000 riyals
    - The `add_balance` method should subtract a single day's wage for every day where the employee was absent 
        - A single day's wage is the salary divided by 30
- Create a `check` method that shows the employee's name, level, number of days left in their absence account, number of times they were late, and their balance.
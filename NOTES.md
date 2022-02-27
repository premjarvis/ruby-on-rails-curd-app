/******* 


/*********** Migration **********/

1. How to Create Migration
   Run Command => rails generate migration <migration_name>
   Exp => rails generate migration create_employees


2. how to add new field in migration
   first of all add open migrate folder and open .rb file then add new field 
    Then Run Command => rails db.rollback
    Again Run Command => rails db.migrate



/******** Run DB Migrate *********/
1. How to run migrate folder
   Run Command => rails db:migrate


/****** Create Model ********/
1. How to Create Model
    First of all Open the model folder then create model file 
    Exp => employee.rb






/******  Check Data Base Connection *******/
1. How to check Data Base Connection in Table
   Run Command => rails console or rails c
    Then Run => <Model_name>.all   Exp => Employee.all







/****** Insert Data in Table ******/
1. How to Insert Data in Table
    Run Command => Employee.create(fName: "Prem", age: "24" [like this])
















/****** Create Model object ********/
1. How to Create Model Object
    Run Command = employee = Employee.new










/****** Insert, Update and Delete Data  in Table with rails console **********/
1. How to Insert Data in Table with Console
    Employee.create("Vinay", lName: "Patel", dob: "04-07-1996".to_date, gender: "Male", email: "vinay.patel@gmail.com", mobile: "6456789098", address: "Delhi", country: "India", salary: 60000,
   socialAccount: "Instagram")

2. How to Read the Data Specific id
    Run Command => Employee.find(2)

3. How to Read the Date First Id and last id
    Run Command => Employee.first and Employee.last

4. How to Read the Data with object
    Run Command => employee = Employee.find(2)

5. How to edit the data with object
    Run Command => employee.fName = "Edited Name" [Like This] 
    Again Run Command => employee.save

6. How to Delete the Data with object
    Run Command => employee = Employee.find(2)
    Again Run Command => employee.destroy





/******* Validation **********/

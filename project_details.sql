--create table project_details with attribute project_id as primary key emp_id , fname, lname , project_name , project_location and project_budget 
CREATE TABLE project_details (
    project_id INT PRIMARY KEY,
    emp_id INT,
    fname VARCHAR(50),
    lname VARCHAR(50),
    project_name VARCHAR(100),
    project_location VARCHAR(100),
    project_budget DECIMAL(15, 2)
);

-- Insert sample data into project_details table
INSERT INTO project_details (project_id, emp_id, fname, lname, project_name, project_location, project_budget)
VALUES
(1, 1, 'Aishi', 'De', 'Project Alpha', 'Mumbai', 5000000.00),
(2, 2, 'Parthiv', 'Abhani', 'Project Beta', 'New Delhi', 3000000.00),
(3, 3, 'Shlok', 'Vij', 'Project Gamma', 'Ahmedabad', 2000000.00),
(4, 4, 'Arjun', 'Verma', 'Project Delta', 'Bangalore', 4000000.00),
(5, 5, 'Sneha', 'Roy', 'Project Epsilon', 'Kolkata', 3500000.00);   
(6, 6, 'Karan', 'Singh', 'Project Zeta', 'Chandigarh', 4500000.00),
(7, 7, 'Neha', 'Joshi', 'Project Eta', 'Mumbai', 2500000.00),
(8, 8, 'Vikram', 'Nair', 'Project Theta', 'Kochi', 3000000.00),
(9, 9, 'Ananya', 'Mehta', 'Project Iota', 'Jaipur', 1500000.00),
(10, 10, 'Rohan', 'Kapoor', 'Project Kappa', 'Gurgaon', 6000000.00);


select * from project_details;

select * from project_details where project_location IN ('Mumbai', 'Bangalore');

select * from project_details where project_budget BETWEEN 3000000 AND 5000000;

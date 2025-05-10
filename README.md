# Tech_Company_Database

This is a database schema I built for managing a tech company's operations. Let me walk you through what it does and how to use it.

## What is this?

This is a database design for tech companies that need to keep track of their employees, projects, products, and customers all in one place. I created it to solve the common problem of having information scattered across different systems.

The main things you can do with this database:
- Track your team members, their skills, and which departments they work in
- Manage your projects, including sprints and individual tasks
- Keep tabs on your products and the technologies used to build them
- Handle customer information and who's managing their accounts

## The Database Structure

I've organized the database into several interconnected tables:

### People & Organization
- **employees**: Your team members' basic info (name, email, GitHub)
- **departments**: Company structure with department names and managers
- **positions**: Job roles with salary ranges and levels
- **skills**: Different skills people might have (coding languages, design tools, etc.)
- **employees_skills**: Links employees to their various skills and proficiency levels

### Work Management
- **projects**: Active and completed projects with timeframes and status
- **sprints**: Project sprints with start/end dates and story points
- **tasks**: Individual work items with priorities and assigned team members

### Products & Technology
- **products**: The stuff you're building, linked to projects
- **technology**: Tech stack components with versions and categories
- **product_technology**: Shows which technologies are used in which products

### Customer Management
- **customers**: Your clients with contact info and account managers

All these tables connect logically - employees work in departments, are assigned to tasks, have specific skills, and may manage projects or customer accounts.

## How To Run The Project

### The Quick Way
1. Download the SQL file or import it into your local machine from my github.
2. Open your database tool (MySQL Workbench)
3. Create a new database called `tech_company`.
4. Run the SQL script to create all the tables and relationships


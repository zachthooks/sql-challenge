# sql-challenge

Employee Database Project
Overview

This project demonstrates how to create, populate, and analyze a relational database using PostgreSQL. The database is structured around employee information, department assignments, salaries, and titles. We imported six CSV files into PostgreSQL tables and performed a series of SQL queries to analyze the data. Additionally, we used QuickDBD to generate an ERD (Entity-Relationship Diagram) to visualize the database structure.

# Project Structure

This project includes:

CSV Files: These files contain employee, department, salary, and title information.
SQL Scripts: SQL scripts for table creation, data import, and queries.
QuickDBD Files: QuickDBD script and ERD image to visualize the database schema.
README: This README file provides an overview of the project.

# Database Setup

The PostgreSQL database was created using a SQL script for table creation. This script includes definitions for primary keys, foreign keys, and other constraints necessary for maintaining data integrity. You can find the table creation script in:

    Employee_DB_Table_creation.sql

After creating each table, we used PostgreSQL's COPY command in the script to import data from the CSV files.
Database Visualization

To visualize the structure of the database, we generated an ERD (Entity-Relationship Diagram) using QuickDBD. The ERD image is included in this repository:

    Employee_ERD

The QuickDBD script used to create this ERD is also available:

    Employee_ERD_script.txt

Data Analysis

We ran SQL queries on the populated database to analyze and explore the data. The query script includes tasks such as listing employees by department, finding employees hired in specific years, and analyzing salary information. The queries are contained in the following file:

    Employee_DB_Queries.sql

This README provides an overview of the project structure and references the key files in this repository. For further information, refer to the individual SQL scripts and documentation within each file.

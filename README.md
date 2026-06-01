# Clinic Database System

## Overview
SQL database for managing a clinic (school project).  
Handles patients, doctors, appointments, treatments, prescriptions, and payments.

## Main Features
- Patients, doctors, departments
- Appointment scheduling
- Treatments & prescriptions
- Payment tracking
- Role-based access (admin, doctor, secretary)

## Database Structure
- Patients  
- Doctors  
- Departments  
- Appointments  
- Treatments  
- Prescriptions  
- Payments  

All tables are connected using foreign keys.

## Roles
Admin – full access  
Doctor – only their own patients  
Secretary – limited access to appointments only  

## Extras
- Views for reports (workload, history, payments)
- Stored procedures for insert/update/delete operations
- Trigger for backup of deleted patients

## Run
```sql
CREATE DATABASE clinic;
SOURCE clinic_dump.sql;

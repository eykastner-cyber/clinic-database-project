
# Clinic Database System

## 📌 Overview
This project is a relational SQL database system for managing a medical clinic.  
It was developed as a final school project in Software Engineering.

The system simulates real clinic operations including:
- Patients management
- Doctors and departments
- Appointments scheduling
- Medical treatments
- Prescriptions
- Payments tracking
- Role-based access control

---

## 🎯 Project Goals

The database was designed to achieve the following objectives:

- Manage patient records (personal data, contact info, visit reason)
- Manage doctors and their departments
- Schedule and track appointments
- Store medical treatments and diagnoses
- Manage prescriptions and medications
- Track payments and financial status
- Enforce access control based on user roles

---

## 🧱 Database Structure

Main entities in the system:

- **Patients**
- **Doctors**
- **Departments**
- **Appointments**
- **Treatments**
- **Prescriptions**
- **Payments**

Each entity is connected using foreign keys to maintain relational integrity.

---

## 👥 User Roles & Permissions

### 🔴 Admin (Root)
- Full access to all tables
- Can insert, update, delete any data
- Manages users and permissions

### 🟢 Doctor
- Access only to their own patients
- Uses dedicated procedures to retrieve medical data
- No access to financial or sensitive system data

### 🔵 Secretary
- Limited access to appointment scheduling data
- Uses a restricted view (`secretary_view`)
- Cannot access medical or financial information

---

## 🔍 Key Features

### 📊 Views (Virtual Tables)
- Full patient appointment history
- Doctor workload analysis
- Prescription tracking per doctor
- Department patient statistics
- Financial summary per patient
- Secretary restricted view (limited access)

---

### ⚙️ Stored Procedures
- Add / update / delete patients
- Add doctors with validation
- Schedule appointments with integrity checks
- Update payment status (paid / pending / cancelled)
- Doctor-specific patient data retrieval
- Safe deletion with cascading logic

---

### ⚡ Triggers
- Automatic backup system for deleted patients

---

## 🔐 Security Model

The system implements role-based access control:
- Sensitive financial and medical data is restricted
- Doctors can only access their own patients
- Secretary access is strictly limited
- Admin has full system control

---

## 🚀 How to Run

1. Open MySQL Workbench or CLI
2. Create a database:
```sql
CREATE DATABASE clinic;

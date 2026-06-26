# healthplus-hospitals-data-modernization
End-to-end Data Engineering project demonstrating data cleaning, transformation, validation, PostgreSQL integration, and Git version control using Python Pandas.

# 🏥 HealthPlus Hospitals Data Modernization

## 📌 Project Overview

The **HealthPlus Hospitals Data Modernization** project demonstrates how modern data engineering practices can transform fragmented healthcare data into a reliable, analytics-ready platform.

The project ingests raw hospital datasets containing patient records, doctor information, appointments, and billing transactions. The data is cleaned, standardized, validated, and loaded into a PostgreSQL data warehouse, where SQL analytics can be performed and Power BI dashboards can be built for business reporting.

This project simulates a real-world healthcare data modernization initiative using industry-standard data engineering tools and workflows.

---

# 🎯 Business Problem

HealthPlus Hospital stores operational data across multiple systems. Over time, inconsistencies have developed, including:

* Missing values
* Duplicate records
* Inconsistent date formats
* Mixed capitalization
* Invalid payment statuses
* Inconsistent city and branch names
* Missing primary keys
* Incorrect numeric formats

These issues reduce data quality, making it difficult for hospital management to generate accurate operational and financial reports.

The goal of this project is to build a clean, reliable, and centralized data platform that supports analytics and business intelligence.

---

# 🚀 Project Objectives

* Clean and standardize multiple healthcare datasets
* Handle missing values and duplicate records
* Validate data quality
* Standardize categorical values
* Normalize dates and numeric columns
* Export cleaned datasets
* Load data into PostgreSQL
* Perform business analytics using SQL
* Build interactive Power BI dashboards

---

# 📂 Project Structure

```text
healthplus-hospitals-data-modernization/

│
├── data/
│   ├── raw_data/
│   │   ├── patients.csv
│   │   ├── doctors.csv
│   │   ├── appointments.csv
│   │   └── billing.csv
│   │
│   └── cleaned_data/
│       ├── patients_cleaned.csv
│       ├── doctors_cleaned.csv
│       ├── appointments_cleaned.csv
│       └── billing_cleaned.csv
│
├── notebooks/
│   └── healthplus_project.ipynb
|
│
└── README.md
```

---

# 🛠 Technology Stack

| Category        | Tools              |
| --------------- | ------------------ |
| Programming     | Python             |
| Data Processing | Pandas             |
| Notebook        | Jupyter Notebook   |
| Database        | PostgreSQL         |
| Database Client | pgAdmin 4          |
| SQL             | PostgreSQL SQL     |
| Visualization   | Power BI           |
| IDE             | Visual Studio Code |
| Version Control | Git & GitHub       |

---

# 📊 Datasets

The project contains four hospital datasets:

### Patients

Stores patient demographic information.

**Fields include**

* Patient ID
* Full Name
* Gender
* Age
* Phone Number
* Email
* City
* Registration Date

---

### Doctors

Contains doctor information.

**Fields include**

* Doctor ID
* Doctor Name
* Specialty
* Branch

---

### Appointments

Stores appointment records.

**Fields include**

* Appointment ID
* Patient ID
* Doctor ID
* Appointment Date
* Appointment Status
* Reason for Visit

---

### Billing

Contains hospital billing information.

**Fields include**

* Invoice ID
* Patient ID
* Invoice Date
* Amount Charged
* Amount Paid
* Payment Method
* Payment Status

---

# 🧹 Data Cleaning Process

The following data quality issues were addressed.

## Patients Dataset

* Removed duplicate records
* Standardized city names
* Standardized gender values
* Converted registration dates
* Validated phone numbers
* Cleaned email formatting
* Created age groups
* Removed missing values

---

## Doctors Dataset

* Filled missing doctor IDs
* Standardized specialty names
* Standardized branch names
* Removed duplicate records
* Corrected capitalization

---

## Appointments Dataset

* Generated missing appointment IDs
* Filled missing patient IDs
* Filled missing doctor IDs
* Standardized appointment statuses
* Converted appointment dates
* Removed duplicate records

---

## Billing Dataset

* Standardized payment methods
* Standardized payment status values
* Converted invoice dates
* Rounded monetary values
* Removed duplicates
* Handled missing values
* Corrected negative values where appropriate

---

# 🗄 Database Design

After cleaning, the datasets were loaded into PostgreSQL.

Tables created:

* patients
* doctors
* appointments
* billing

The PostgreSQL database serves as the project's analytical data warehouse.

# 🔄 Data Pipeline

```text
Raw CSV Files
        │
        ▼
Python (Pandas)
Data Cleaning & Validation
        │
        ▼
Cleaned CSV Files
        │
        ▼
PostgreSQL Database
        │
        ▼
SQL Analytics
        │
        ▼
Power BI Dashboard
```

---

# 📸 Project Screenshots

The **screenshots/** directory contains:

* Project folder structure
* Raw datasets
* Cleaned datasets
* PostgreSQL tables
* SQL query execution
* Power BI dashboards
* Pipeline architecture

---

# 📌 Key Skills Demonstrated

* Data Cleaning
* Data Validation
* Data Standardization
* Data Transformation
* Feature Engineering
* PostgreSQL
* SQL Analytics
* Data Warehousing
* ETL Pipeline Development
* Healthcare Data Engineering
* Power BI Integration

---

# 🚀 Future Improvements

* Automate ingestion using Apache Airflow
* Containerize the pipeline using Docker
* Store cleaned data in cloud storage
* Deploy PostgreSQL using Docker Compose
* Build an automated ETL pipeline
* Integrate with Microsoft Fabric or Snowflake
* Add data quality monitoring and logging

---

# 👨‍💻 Author

**Ayomikun Adaramola**

Senior Data Engineer

* 🌐 Portfolio: https://ayomikun-adaramola.netlify.app
* 💼 LinkedIn: https://www.linkedin.com/in/ayomikun-adaramola/
* 🐙 GitHub: https://github.com/Stephen-delAyo

---

# ⭐ Acknowledgements

This project was developed as part of a portfolio showcasing modern data engineering practices, including data cleaning, data warehousing, SQL analytics, and business intelligence using healthcare datasets.

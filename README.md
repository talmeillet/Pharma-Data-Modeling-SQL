# Pharmaceutical R&D Data Modeling & SQL Implementation (GSK Case Study)

## **Overview**
This project focuses on the end-to-end database design and characterization for **GSK (GlaxoSmithKline)**, a global pharmaceutical leader. The goal was to build a robust system capable of tracking the complex lifecycle of drug development-from the initial research phase and clinical trials to regulatory approval and commercialization.

## **Business Logic & Requirements**
The model simulates the production of high-stakes medications (e.g., Lamotrigine) and manages the data flow across multiple departments, including Research, Pharmacy, Marketing, and Sales. 

Key processes modeled include:
* **Research & Target Identification:** Tracking research identifiers, disease targets, and molecular efficacy.
* **Clinical Trials (Phases I-IV):** Managing patient enrollment, trial phases, safety evaluations, and trial durations.
* **Regulatory Compliance:** Modeling the **New Drug Application (NDA)** process and interactions with international approval bodies (e.g., FDA, EMA).
* **Commercialization:** Tracking marketing campaigns, sales targets, and geographical distribution.

## **Technical Implementation**

### **1. Data Modeling (ERD)**
Developed a comprehensive **Entity-Relationship Diagram (ERD)** to define entities, attributes, and relationships. 
* **Cardinality Rules:** Defined strict relationships, such as trials requiring at least 20 patients and medications requiring at least 4 trial phases for production.
* **Normalization:** Ensured data integrity by splitting complex attributes (e.g., composite names) and handling multi-valued attributes.

### **2. SQL Engineering**
Implemented the relational schema using **MariaDB/MySQL**. Key technical features include:
* **DDL (Data Definition Language):** Creating tables for employees, trials, and approval bodies, including complex junction tables for many-to-many relationships.
* **Advanced Querying:**
    * **Joins:** Utilizing `INNER JOIN` and `LEFT OUTER JOIN` to connect employees with their respective trials and track approval statuses.
    * **Nested Subqueries:** Retrieving specific insights, such as identifying employees managing particular trials or filtering trials pending regulatory approval.
* **Data Maintenance:** Implementing `UPDATE` and `DELETE` queries to manage real-time changes in trial durations or employee roles.

## **Tech Stack**
* **Database Design:** ERD (Entity-Relationship Modeling)
* **Tools:** DBeaver, MariaDB/MySQL
* **Languages:** SQL

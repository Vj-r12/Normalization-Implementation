# Normalization-Implementation
A Practical Guide to Structuring Data in the Database Normalization Journey: From Denormalization to 1NF, 1NF to 2NF, and Final Destination at 3NF with Real-world Anomaly Scenarios


**Problem Statements and Solutions:**

◼️ **Data Redundancy in Denormalized Dataset:**
The initial dataset exhibited significant data redundancy, particularly in columns such as Quantity, Product_Price, Product_Id, Product_Name, and Customer_Name. This redundancy not only impeded data clarity but also posed challenges for efficient data management.

◼️ **Solution - Conversion to 1NF:**

Applying the principles of First Normal Form (1NF), we transformed the denormalized dataset, ensuring that each column held a single value, and every row was uniquely identified. This step substantially reduced data redundancy and laid the foundation for subsequent normalization.

◼️ **Converting 1NF to 2NF** 

**Partial Dependency and Candidate Key Relationship:**
In the 1NF state, we identified partial dependency of non-key columns on the candidate key. To address this, we progressed to Second Normal Form (2NF), enforcing full dependency of all non-key columns on the candidate key. This involved the creation of a fact table (Sales Order Info) and dimension tables (Customer Info and Product Info). 

**Rules for Second Normal Form (2NF):**
1. Ensure the dataset is in 1NF.
2. All non-key columns must be fully dependent on the candidate key.
3. Every table should have primary key & relationship between the tables should be formed using foreign key.


![Screenshot (392)](https://github.com/Vj-r12/Normalization-Implementation/assets/123143472/86054a25-b53b-49af-835f-3d191305331a)


◼️ **Converting 2NF to 3NF**

 **Transitive Dependency on Enterprise Information:**
Further analysis revealed a transitive dependency on Enterprise information within the Sales Order Info. To eliminate this, we introduced an additional dimension table for Enterprise Info during the transition to Third Normal Form (3NF). This strategic move enhanced data clarity and maintained a streamlined structure. 

**Rules for Third Normal Form (3NF):**
1. Ensure the dataset is in 2NF.
2. Avoid transitive dependencies.


![Screenshot (390)](https://github.com/Vj-r12/Normalization-Implementation/assets/123143472/c494398c-71cf-44c6-abd3-51d6212b5dc8)

**Conclusion:**
Systematically addressing data redundancy, partial dependency, and transitive dependency, we successfully converted the denormalized dataset into the efficient and normalized state of Third Normal Form (3NF). This transformation not only improved data integrity but also equipped the database to handle INSERTION, UPDATION, and DELETION anomalies seamlessly. The structured and normalized database model stands as a testament to the power of systematic normalization in effective data management.


◼️**RDBMS USED** 
1) Postgres

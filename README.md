# Normalization-Implementation
A Practical Guide to Structuring Data in the Database Normalization Journey: From Denormalization to 1NF, 1NF to 2NF, and Final Destination at 3NF with Real-world Anomaly Scenarios


Certainly, let's structure and refine the explanation:

**Dataset Selection and Denormalization:**
Initially, we selected a dataset for the purpose of normalization implementation, specifically focusing on a Sales Order table. In the denormalized dataset, we observed data redundancy with repeated values for Quantity, Product_Price, Product_Id, Product_Name.

◼️ **Conversion to First Normal Form (1NF):**
To address this, we followed the rules of First Normal Form (1NF), ensuring that every column holds a single value, and each row is unique, either through a single or multiple columns. Primary keys were not mandatory for this stage.

◼️ **Conversion to Second Normal Form (2NF):**
Moving forward, we converted the dataset into Second Normal Form (2NF) by adhering to the rules:
1. Ensuring the dataset is in 1NF.
2. All non-key columns are fully dependent on the candidate key.
3. Establishing a primary key for each table and forming relationships between tables using foreign keys. We split the dataset into a fact table (Sales Order Info) and dimension tables (Customer Info and Product Info).

![Screenshot (392)](https://github.com/Vj-r12/Normalization-Implementation/assets/123143472/c4beb46d-4200-4ad5-a401-1e4fa0a80ca6)


◼️ **Conversion to Third Normal Form (3NF):**
Continuing the normalization journey, we reached Third Normal Form (3NF) by satisfying the rules:
1. Ensuring the dataset is in 2NF.
2. Avoiding transitive dependencies. In this stage, we introduced an additional dimension table for Enterprise Info, as enterprise information had a transitive dependency with Sales Order Info.

![Screenshot (390)](https://github.com/Vj-r12/Normalization-Implementation/assets/123143472/5b4c3477-5512-41b6-9af6-de07437034e9)


◼️ **Implementation of Anomalies Handling:**
To showcase the advantages of normalization, we implemented  INSERTION, UPDATION, DELETION anomalies. Notably, these anomalies did not impact the Sales Order Info table because we had successfully normalized the dataset into a fact table and dimension tables.

◼️ **Conclusion:**
In summary, by converting the denormalized dataset into the third normal form, we established a robust and structured database model, mitigating potential issues that could arise from data anomalies. This normalization journey ensures data integrity and facilitates efficient database management.

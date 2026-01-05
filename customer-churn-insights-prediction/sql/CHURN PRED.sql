use telco_churn;
CREATE TABLE customers_raw (
    customerID VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(50),
    SeniorCitizen INT,
    Partner VARCHAR(50),
    Dependents VARCHAR(50),
    tenure INT,
    PhoneService VARCHAR(50),
    MultipleLines VARCHAR(50),
    InternetService VARCHAR(50),
    OnlineSecurity VARCHAR(50),
    OnlineBackup VARCHAR(50),
    DeviceProtection VARCHAR(50),
    TechSupport VARCHAR(50),
    StreamingTV VARCHAR(50),
    StreamingMovies VARCHAR(50),
    Contract VARCHAR(50),
    PaperlessBilling VARCHAR(50),
    PaymentMethod VARCHAR(150),
    MonthlyCharges FLOAT,
    TotalCharges FLOAT,
    created_at DATETIME
);
CREATE TABLE churn_predictions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customerID VARCHAR(50),
    churn_predicted INT,
    churn_probability FLOAT,
    predicted_at DATETIME
);
insert into customers_raw 
values('0001-GIQMR', 'Female', '0', 'No', 'No', '1', 'Yes', 'No', 'Fiber optic', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Month-to-month', 'No', 'Electronic check', '69.15', '69.15', '2025-11-21 00:14:16');
select*from customers_raw;
select* from churn_predictions;

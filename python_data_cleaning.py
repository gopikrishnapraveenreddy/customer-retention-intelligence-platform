import pandas as pd

# Load raw dataset
df = pd.read_csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")

# Standardize column names
df.columns = (
    df.columns
    .str.strip()
    .str.replace(" ", "_")
    .str.replace("-", "_")
    .str.lower()
)

# Convert totalcharges to numeric
df["totalcharges"] = pd.to_numeric(df["totalcharges"], errors="coerce")

# Remove records with missing totalcharges
df = df.dropna(subset=["totalcharges"])

# Remove duplicates
df = df.drop_duplicates()

# Create churn flag
df["churn_flag"] = df["churn"].map({"Yes": 1, "No": 0})

# Create senior citizen label
df["senior_citizen_label"] = df["seniorcitizen"].map({
    1: "Senior Citizen",
    0: "Non-Senior Citizen"
})

# Create tenure groups
def tenure_group(x):
    if x <= 12:
        return "0-12 Months"
    elif x <= 24:
        return "13-24 Months"
    elif x <= 48:
        return "25-48 Months"
    else:
        return "49+ Months"

df["tenure_group"] = df["tenure"].apply(tenure_group)

# Create monthly charge groups
def monthly_charge_group(x):
    if x < 35:
        return "Low Charge"
    elif x < 70:
        return "Medium Charge"
    else:
        return "High Charge"

df["monthly_charge_group"] = df["monthlycharges"].apply(monthly_charge_group)

# Export cleaned dataset
df.to_csv("customer_churn_cleaned.csv", index=False)

print("Data cleaning completed.")
print("Rows:", df.shape[0])
print("Columns:", df.shape[1])

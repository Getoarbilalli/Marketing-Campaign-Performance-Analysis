import pandas as pd
import numpy as np 
import matplotlib.pyplot as plt 
import seaborn as sns 
df = pd.read_csv("Bank_Marketing_Dataset.csv")
print (df.head()) 
print("Numri i rreshtave dhe kolonave:", df.shape)
print("Vlerat qe mungojne:")
print(df.isnull().sum())
print("Pergjigjet e klienteve:")
print(df["y"].value_counts())
print("Perqindja e pergjigjeve:")
print(df["y"].value_counts(normalize=True) * 100)
print("Conversion Rate by Contact Type:")
print(pd.crosstab(df["contact"], df["y"], normalize="index") * 100) 

print("Conversion Rate by Month:")
print(pd.crosstab(df["month"], df["y"], normalize="index") * 100) 
print("Conversion Rate by Day of Week:")
print(pd.crosstab(df["day_of_week"], df["y"], normalize="index") * 100) 
print("Conversion Rate by Previous Campaign Outcome:")
print(pd.crosstab(df["poutcome"], df["y"], normalize="index") * 100) 
plt.figure(figsize=(7, 5))

df["y"].value_counts().plot(
    kind="pie",
    autopct="%1.2f%%",
    colors=["lightcoral", "lightgreen"]
)

plt.title("Campaign Response Rate")
plt.ylabel("")
plt.show() 
contact_rate = pd.crosstab(
    df["contact"], df["y"], normalize="index"
) * 100

contact_rate["yes"].plot(
    kind="bar",
    color="steelblue",
    figsize=(7, 5)
)

plt.title("Conversion Rate by Contact Type")
plt.xlabel("Contact Type")
plt.ylabel("Conversion Rate (%)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()
monthly = pd.crosstab(df["month"], df["y"], normalize="index") * 100

monthly["yes"].plot(kind="bar", color="steelblue", figsize=(10, 5))

plt.title("Conversion Rate by Month")
plt.xlabel("Month")
plt.ylabel("Conversion Rate (%)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()
daily = pd.crosstab(df["day_of_week"], df["y"], normalize="index") * 100

daily = daily.reindex(["mon", "tue", "wed", "thu", "fri"])

daily["yes"].plot(kind="bar", color="steelblue", figsize=(9, 5))

plt.title("Conversion Rate by Day of Week")
plt.xlabel("Day of Week")
plt.ylabel("Conversion Rate (%)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()
previous = pd.crosstab(df["poutcome"], df["y"], normalize="index") * 100

previous["yes"].plot(kind="bar", color="steelblue", figsize=(9, 5))

plt.title("Conversion Rate by Previous Campaign Outcome")
plt.xlabel("Previous Campaign Outcome")
plt.ylabel("Conversion Rate (%)")
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()
# Conclusions
# 1. Overall conversion rate is 11.27%.
# 2. Cellular contact has a higher conversion rate (14.74%)
#    than telephone contact (5.23%).
# 3. Thursday has the highest conversion rate (12.12%)
#    among the days of the week.
# 4. March has the highest monthly conversion rate (50.55%).
# 5. Clients with a successful previous campaign outcome
#    have a conversion rate of 65.11%.
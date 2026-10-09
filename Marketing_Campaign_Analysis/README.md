
# Marketing Campaign Performance Analysis

## Project Overview

This project analyzes the performance of a bank direct marketing campaign to identify factors associated with customer conversion and provide actionable business recommendations.

The analysis covers **41,188 customer records** and examines campaign response rates, communication channels, monthly trends, weekday performance, and previous campaign outcomes.

The project combines **Python, Pandas, NumPy, Matplotlib, Seaborn, SQL, and Microsoft Excel** to analyze campaign data and present findings through visualizations and a detailed report.

## Business Objectives

The main objectives are to:

- Measure the overall campaign conversion rate.
- Compare conversion rates between cellular and telephone contact.
- Identify months associated with higher customer conversion.
- Evaluate campaign performance across weekdays.
- Analyze the relationship between previous campaign outcomes and customer responses.
- Recommend opportunities to improve marketing efficiency and customer targeting.

## Dataset Information

**Dataset:** Bank Marketing, Bank Additional Full

**Source:** UCI Machine Learning Repository

**Records:** 41,188

**Target variable:** `y`

The target variable indicates whether a customer subscribed to a term deposit:

- `yes`: Customer subscribed.
- `no`: Customer did not subscribe.

### Key Variables

| Variable | Description |
|---|---|
| `y` | Customer subscription response |
| `contact` | Communication method |
| `month` | Month of the last contact |
| `day_of_week` | Weekday of the last contact |
| `poutcome` | Outcome of the previous marketing campaign |

## Tools and Technologies

| Technology | Purpose |
|---|---|
| Python | Data processing and analysis |
| Pandas | Data manipulation and aggregation |
| NumPy | Numerical operations |
| Matplotlib | Creating visualizations |
| Seaborn | Statistical visualization support |
| SQL | Data querying and analysis |
| Microsoft Excel | Spreadsheet analysis |
| Visual Studio Code | Python development environment |

## Analysis Methodology

The project follows a structured analytical workflow:

1. Import the dataset into Python.
2. Inspect its structure and dimensions.
3. Examine missing values and customer response distributions.
4. Group responses by contact type, month, weekday, and previous campaign outcome.
5. Calculate conversion rates for each category.
6. Create charts to visualize campaign performance.
7. Interpret the results and develop business recommendations.

### Conversion Rate Formula

Conversion Rate (%) = (Positive Responses / Total Responses) × 100

## Results and Key Findings

### 1. Overall Campaign Response Rate

The campaign achieved an overall conversion rate of **11.27%**.

| Response | Customers | Percentage |
|---|---:|---:|
| No | 36,548 | 88.73% |
| Yes | 4,640 | 11.27% |
| **Total** | **41,188** | **100%** |

Most customers did not subscribe to the term deposit, indicating opportunities to improve campaign targeting.

### 2. Conversion Rate by Contact Type

| Contact Method | Conversion Rate |
|---|---:|
| Cellular | 14.74% |
| Telephone | 5.23% |

**Finding:** Cellular communication was associated with a substantially higher conversion rate than telephone contact.

**Business implication:** Cellular communication should be evaluated as a priority channel for future campaigns.

### 3. Conversion Rate by Month

**March** recorded the highest observed monthly conversion rate at approximately **50.55%**.

December, September, and October also showed relatively high conversion rates.

**Business implication:** Campaign timing may influence results. Monthly conversion rates should also be evaluated alongside contact volumes and customer characteristics.

### 4. Conversion Rate by Day of the Week

| Day | Conversion Rate |
|---|---:|
| Monday | 9.95% |
| Tuesday | 11.78% |
| Wednesday | 11.67% |
| Thursday | 12.12% |
| Friday | 10.81% |

**Finding:** Thursday recorded the highest observed weekday conversion rate at **12.12%**.

**Business implication:** Marketing teams may benefit from testing alternative weekday contact schedules.

### 5. Conversion Rate by Previous Campaign Outcome

| Previous Outcome | Conversion Rate |
|---|---:|
| Failure | 14.23% |
| Nonexistent | 8.83% |
| Success | 65.11% |

**Finding:** Customers with a successful previous campaign outcome achieved a conversion rate of approximately **65.11%**.

**Business implication:** Previous campaign outcomes can be valuable indicators for customer segmentation and targeting.

## Data Visualizations

The project includes five charts illustrating the main findings.

### Campaign Response Rate

![Campaign Response Rate](Marketing_Campaign_Analysis/campaign_response_rate.png.png)

### Conversion Rate by Contact Type

![Conversion Rate by Contact Type](Marketing_Campaign_Analysis/coversion_contact_type.png.png)

### Conversion Rate by Month

![Conversion Rate by Month](Marketing_Campaign_Analysis/conversion_by_month.png.png)

### Conversion Rate by Day of the Week

![Conversion Rate by Day](Marketing_Campaign_Analysis/conversion_by_day.png.png)

### Conversion Rate by Previous Campaign Outcome

![Conversion Rate by Previous Campaign Outcome](Marketing_Campaign_Analysis/conversion_previous_campaign.png)

## Business Recommendations

Based on the findings, the following actions are recommended:

1. **Prioritize previously responsive customers.** Customers with successful previous campaign outcomes demonstrated substantially higher conversion rates.

2. **Optimize communication channels.** Evaluate increased emphasis on cellular contact, which was associated with higher conversion.

3. **Improve campaign scheduling.** Investigate the reasons behind monthly and weekday differences before adjusting contact schedules.

4. **Strengthen customer segmentation.** Consider customer demographics, occupation, education, and economic conditions when designing future campaigns.

5. **Test marketing strategies.** Validate proposed improvements through controlled experiments before implementing major changes.

6. **Monitor campaign performance.** Track conversion rates and customer responses regularly to support data-driven decision-making.

## Project Structure

```text
Marketing-Campaign-Performance-Analysis/
│
├── README.md
│
└── Marketing_Campaign_Analysis/
    │
    ├── Bank_Marketing_Dataset.csv
    ├── Marketing Campaign Performance Analysis.xlsx
    ├── MarketingCampaignAnalysis.sql
    ├── marketing_analysis.py
    ├── Campaign Performance Analysis Report.pdf.pdf
    │
    ├── campaign_response_rate.png.png
    ├── coversion_contact_type.png.png
    ├── conversion_by_month.png.png
    ├── conversion_by_day.png.png
    └── conversion_previous_campaign.png
```

## How to Run the Analysis

### 1. Download the Repository

Download the repository as a ZIP file or clone it using Git.

### 2. Install Required Libraries

```bash
pip install pandas numpy matplotlib seaborn
```

### 3. Open the Project

Open the `Marketing_Campaign_Analysis` folder in Visual Studio Code.

### 4. Check the Dataset Filename

Ensure the CSV filename referenced in `marketing_analysis.py` matches the dataset available in the project folder.

For example:

```python
import pandas as pd

df = pd.read_csv("Bank_Marketing_Dataset.csv")
```

### 5. Execute the Analysis

Run:

```bash
python marketing_analysis.py
```

The script analyzes customer responses and generates campaign performance visualizations.

## Project Deliverables

This repository contains:

- The original marketing dataset in CSV format.
- An Excel workbook.
- Python analysis code.
- An SQL analysis file.
- Five campaign performance charts.
- A detailed PDF analysis report.
- This project documentation.

## Conclusion

This project demonstrates how data analytics can support marketing performance evaluation and business decision-making.

The analysis identified an overall campaign conversion rate of **11.27%**. Higher conversion rates were associated with cellular communication, selected campaign periods, and successful previous campaign outcomes.

These findings suggest opportunities to improve customer segmentation, communication strategies, and campaign planning.

The project highlights practical skills in **Python, SQL, Excel, data analysis, data visualization, and business reporting**.

## Data Source

**UCI Machine Learning Repository**

Bank Marketing Dataset:

https://archive.ics.uci.edu/dataset/222/bank+marketing

**Reference:**

Moro, S., Cortez, P., and Rita, P. (2014). *A Data-Driven Approach to Predict the Success of Bank Telemarketing*. Decision Support Systems.

---

**Project Category:** Data Analytics | Marketing Analytics | Business Intelligence

**Skills Demonstrated:** Python, SQL, Excel, Pandas, Data Visualization, Business Analysis


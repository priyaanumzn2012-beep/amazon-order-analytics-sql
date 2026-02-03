# amazon-order-analytics-sql
SQL-based order analytics project focusing on operational KPIs and business insights


---

## 🗄 Database & Table Design
The core table used in this project is **orders**, containing:
- Order details (order_id, order_date, quantity)
- Warehouse & employee information
- Order status and defect indicators

This structure supports operational and performance analytics.

---

## 🧹 Data Cleaning & Preparation
Key cleaning steps performed:
- Removed invalid or NULL quantities
- Standardized order status values
- Trimmed inconsistent text fields
- Handled missing defect information
- Ensured date consistency

This ensured the dataset was **analysis-ready**.

---

## 📊 Key Business KPIs

### 1. Order Fulfillment Health
- Delivered vs Cancelled vs Returned orders
- Percentage contribution by status

### 2. Order Aging Analysis
- New (0–7 days)
- Recent (8–30 days)
- Old (30+ days)
Used to identify backlog and SLA risks.

### 3. Warehouse Performance
- Order volume per warehouse
- Cancellation & return concentration

### 4. Quality Metrics
- Defect counts by warehouse
- Identification of quality risk zones

### 5. Employee Productivity
- Orders handled per employee
- Detection of workload imbalance

### 6. Time-Based Trends
- Daily order trends
- Last 7 days demand analysis

---

## 💡 Business Insights & Storytelling

### Insight 1: Fulfillment Risk
Non-delivered orders directly impact customer trust and increase reverse logistics cost.
**Action:** Focus on high-cancellation warehouses and training gaps.

### Insight 2: Aging Backlog
Old orders indicate SLA breach risk.
**Action:** Prioritize aging orders and implement alerts.

### Insight 3: Warehouse Load Imbalance
Some warehouses are overburdened.
**Action:** Rebalance order allocation and improve capacity planning.

### Insight 4: Quality Concentration
Defects are concentrated in specific warehouses.
**Action:** Perform root cause analysis on packaging and handling processes.

### Insight 5: Employee Productivity Gap
Uneven workload across employees.
**Action:** Optimize task allocation and introduce performance benchmarks.

---

## 🔐 Data Note
Only **sample and anonymized data** is used in this repository.
This follows industry best practices for data governance and confidentiality.

---

## 🚀 Key Learnings
- Translating SQL outputs into business decisions
- Designing KPIs aligned with operational goals
- Thinking beyond queries: **Why it matters to the business**

---

## 📌 Author
Anupriya Garg 
Aspiring Data Analyst | SQL | Business Analytics

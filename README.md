# dbt-80k-track

## Week-0 Deliverable – Live Dashboard
[Click here to view revenue-per-day dashboard](https://lookerstudio.google.com/reporting/bd599be4-0857-44d5-9d97-acc3d89a7524)

## 🕵️‍♂️ Data Quality Detective Work

### How We Discovered Validation Flaws

#### Step 1: Suspicious Pattern Detection
**Observation:** Rejected table contained statuses that looked valid

#### Step 2: Side-by-Side Comparison  
**Method:** Compared accepted vs rejected rows with identical business data

#### Step 3: Root Cause Analysis
**Hypothesis:** Case sensitivity in validation logic

#### Step 4: Business Logic Validation
**Discovery:** NULL dates represent valid business states, not data errors

#### Step 5: Statistical Confirmation  
**Evidence:** Chi-square test confirmed no arbitrary patterns

### The Fix Implemented
- **Case-insensitive validation**: `UPPER(TRIM(status))`
- **Status-aware date checks**: Only validate required dates per status

### Key Data Engineering Insight  
**Data Quality = Business Understanding × Technical Validation**

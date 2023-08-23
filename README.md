# **SQL Data Wrangling on Employee Gender Distribution** 📊

Harnessing the power of SQL, we embarked on a data wrangling journey to understand the gender dynamics within a company. Our primary aim was to dissect the distribution between male and female employees on a yearly basis, starting from the year 1990.

## **Steps Undertaken**:

### **1. Data Cleaning**:
- **Null Values**: Identified and addressed null values in relevant columns, ensuring data integrity.
- **Data Types**: Ensured that the 'gender' and 'joining_date' columns were of the appropriate data types.

### **2. Filtering Data**:
- Used `WHERE` clauses to focus solely on records from 1990 onwards.

### **3. Gender Breakdown**:
- Deployed a `GROUP BY` clause on the 'joining_date' and 'gender' columns.
- Used the `COUNT` function to get the number of male and female employees for each year.

### **4. Results Presentation**:
- Used `ORDER BY` to arrange results chronologically.
- Presented the data in a structured format with columns: Year, Male Employees, and Female Employees.

### **5. Advanced Analysis (Optional)**:
- Calculated the **Gender Ratio** for each year to gauge gender parity.
- Highlighted years where there was a significant disparity between male and female hires.

## **Key Insights Gained**:

1. **Yearly Trends**: Detected certain years where hiring was skewed towards a particular gender.
2. **Peak Hiring Periods**: Identified specific years where hiring surged for both genders, possibly indicating business expansion or high attrition periods.
3. **Gender Parity Progress**: Observed whether the company was progressing towards achieving gender parity in its hiring practices over the years.

## **Conclusion**:

Through SQL data wrangling, we provided a clear, year-by-year breakdown of gender distribution within the company. This not only sheds light on the company's hiring practices but also serves as a foundation for more advanced gender-related analyses in the future. The insights derived from this can guide HR policies and diversity inclusion strategies for the company.

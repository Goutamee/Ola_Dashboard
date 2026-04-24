# Ola Dashboard

1. Project Headline

Ola Ride Analytics Dashboard – Booking & Operations Performance Analysis | July 2024

 2. Purpose

This project delivers a full-stack data analytics solution for Ola's ride-booking operations, combining SQL-based data extraction and Power BI visualization. Built on over 103,000 booking records, it helps operations and business teams monitor booking success rates, analyze cancellation patterns, evaluate driver and customer ratings, track revenue, and identify incomplete ride reasons — enabling smarter decisions across fleet management, customer experience, and service quality.

3. Key Technologies Used

- Microsoft Power BI Desktop — interactive dashboard and visual analytics (`.pbix`)
- MySQL — database creation, querying, and View-based data preparation (`.sql`)
- Microsoft Excel — raw data source and staging layer (`.xlsx` with 103K+ records)
- SQL Views — reusable query logic for KPIs (10 views built: successful bookings, cancellations, ratings, revenue, etc.)
- DAX (Data Analysis Expressions) — calculated measures and KPIs within Power BI
- Power Query (M Language) — data transformation and loading inside Power BI



4. Data Source

More info on where data come from and how it's structured, source: Kaggle.

- File: `Bookings.xlsx` → imported into MySQL as the `bookings` table in the `ola` database
- Records: ~103,024 ride bookings (July 2024, Bengaluru)
- Fields (20 columns):
  - Booking info: `Booking_ID`, `Date`, `Time`, `Booking_Status` (Success / Canceled by Driver / Canceled by Customer / Driver Not Found)
  - Customer & Driver: `Customer_ID`, `Driver_Ratings`, `Customer_Rating`
  - Vehicle: `Vehicle_Type` (Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, eBike), `Vehicle Images`
  - Route: `Pickup_Location`, `Drop_Location`, `Ride_Distance`
  - Timing: `V_TAT` (Vehicle Turnaround Time), `C_TAT` (Customer Turnaround Time)
  - Cancellations: `Canceled_Rides_by_Customer` (5 reasons), `Canceled_Rides_by_Driver` (4 reasons)
  - Ride completion: `Incomplete_Rides`, `Incomplete_Rides_Reason` (Customer Demand / Vehicle Breakdown / Other Issue)
  - Financials: `Booking_Value`, `Payment_Method` (Cash, UPI, Credit Card, Debit Card)

5. Features of the Dashboard

- Booking Status Overview — Visual breakdown of Successful, Cancelled (by Driver/Customer), and Driver Not Found bookings
- Revenue Analysis — Total booking value from successful rides; trend over dates in July
- Vehicle-Type Performance — Average ride distance, average ratings, and booking volume per vehicle type (7 categories)
- Cancellation Deep-Dive — Reasons for customer and driver cancellations shown separately; top cancellation triggers identified
- Top Customer Analysis — Leaderboard of top 5 most frequent riders by booking count
- Driver Rating Insights — Max/min driver ratings per vehicle type (with Prime Sedan spotlight); average customer rating by vehicle
- Payment Method Breakdown — Distribution across Cash, UPI, Credit Card, and Debit Card
- Incomplete Rides Tracker — List of rides not completed with specific reason codes (Customer Demand, Vehicle Breakdown, Other)
- SQL-Powered Views — 10 pre-built SQL Views serve as the analytical backbone, making the data pipeline clean and repeatable
- Interactive Filters — Slice by vehicle type, booking status, date, and payment method for drill-down analysis

6. Screenshots of the Dashboard

Page 1 - https://github.com/Goutamee/Ola_Dashboard/blob/main/Screenshot_1.png

Page 2 - https://github.com/Goutamee/Ola_Dashboard/blob/main/Screenshot_2.png

Page 3 - https://github.com/Goutamee/Ola_Dashboard/blob/main/Screenshot_3.png

Page 4 - https://github.com/Goutamee/Ola_Dashboard/blob/main/Screenshot_4.png

Page 5 - https://github.com/Goutamee/Ola_Dashboard/blob/main/Screenshot_5.png


# 2-Day SQL Practice Plan

## Overview
This repository contains a concise **2‑day plan** for practicing core SQL concepts. Each day focuses on a set of topics and includes **solved SQL queries** that you can run against a typical relational database (e.g., PostgreSQL, MySQL, SQLite). All queries are written in **standard ANSI‑SQL** and are heavily commented to explain the logic.

---

## Day 1 – Fundamentals
| Time | Topic | Practice Problem |
|------|-------|-------------------|
| 09:00 – 10:00 | SELECT basics, filtering, ordering | `day1_basic_select.sql` |
| 10:15 – 11:30 | Aggregation – `GROUP BY`, `HAVING` | `day1_aggregation.sql` |
| 13:00 – 14:30 | Subqueries – scalar & correlated | `day1_subqueries.sql` |
| 15:00 – 16:30 | Set operations – `UNION`, `INTERSECT` | `day1_set_ops.sql` |

## Day 2 – Advanced Topics
| Time | Topic | Practice Problem |
|------|-------|-------------------|
| 09:00 – 10:30 | Joins – inner, left/right, full, self‑join | `day2_joins.sql` |
| 10:45 – 12:15 | Window functions – ranking, running totals | `day2_window.sql` |
| 13:30 – 15:00 | CTEs & recursive queries | `day2_cte.sql` |
| 15:15 – 16:45 | Performance basics – indexes, EXPLAIN | `day2_performance.sql` |

---

## How to Use the Repository
1. **Clone** the repo:
   ```bash
   git clone https://github.com/abhinavpadige4/sql-practice-plan.git
   cd sql-practice-plan
   ```
2. Open the `queries/` folder – each `.sql` file contains a **self‑contained** example with a short description at the top.
3. Run the queries against your favourite RDBMS. If you need sample data, the `setup.sql` script (included in the repo) creates a small demo schema (`employees`, `departments`, `sales`).
4. Experiment! Modify the queries, add your own tables, and try to answer the *challenge* questions listed in the comments.

---

## Repository Structure
```
sql-practice-plan/
├─ PLAN.md                # This 2‑day plan (you are reading it)
├─ setup.sql              # Optional: creates demo tables & data
└─ queries/
   ├─ day1_basic_select.sql
   ├─ day1_aggregation.sql
   ├─ day1_subqueries.sql
   ├─ day1_set_ops.sql
   ├─ day2_joins.sql
   ├─ day2_window.sql
   ├─ day2_cte.sql
   └─ day2_performance.sql
```

Feel free to **fork** this repo, add more problems, or adapt the schedule to your own learning pace. Happy querying! 🎉

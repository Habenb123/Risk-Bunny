# ğŸŒ Risk Bunny // UPI Fraud Ring & Merchant Analytics

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg)](https://www.python.org/)
[![Streamlit](https://img.shields.io/badge/Streamlit-1.40%2B-FF4B4B.svg)](https://streamlit.io/)
[![DuckDB](https://img.shields.io/badge/DuckDB-In--Memory%20OLAP-FFF000.svg)](https://duckdb.org/)
[![Plotly](https://img.shields.io/badge/Plotly-Dark%20Visuals-3F4F75.svg)](https://plotly.com/)

Unabridged enterprise-grade UPI transaction monitoring, fraud ring detection, and merchant chargeback analytics platform powered by **DuckDB** in-memory OLAP and **Risk Bunny**, an interactive LMM-driven AI Copilot.

---

3A Directory Structure

` logging & folder architecture
```text
.
â””â”€â”€ agent/                         # Risk Bunny AI Copilot engine & logic+ â””â”€â”€ assets/                   # Agent visual assets & avatars+ â””â”€â”€ bunny.png
+ â%0â%0â% __init__.py                # Package initialization+ â””â”€â”€ agent.py                   # DuckDB semantic SQL generator & fallback engine+ â%0â%0â% Agent.ipynb                # Agent experimentation and prompt evaluation

â””â”€â”€ dashboard/                    # Interactive Streamlit applicationz+ â””â”€â”€ assets/                   # UI branding assets+ â%0â%0â% bunny.png
+ â%0â%0â% app.py                     # Application entry point+ â%0â%0â% dashboard.py               # Full multi-page analytics & full-screen chat UI+ â%0â%0â% requirements.txt           # Dashboard dependencies+ â””â”€â”€ run_dashboard.bat          # 1-click launcher for Windows

â””â”€â”€ data,                         # Data store (raw and cleaned)+ â””â”€â”€ raw/                       # Original hackathon datasets (.csv, .json, notes)+" â””â”€â”€ processed/                 # Star-schema cleaned analytical tables (.csv, .parquet)
+   áIO2%1 dim_customers.csv
+   â%0â%0â% dim_merchants.csv
+   áIO2%1 fact_chargebacks.csv
+   â%0â%0â% fact_transactions.csv

@ eda/                           # Exploratory Data Analysis
+ â””â”€â”€ README.md                  # EDA notes and investigation log+ â””â”€â”€ track1_upi_fraud_merchant_analytics.ipynb  # Initial EDA notebook

+ â%0â%0â%.env.example                   # Environment variable template (Gemini API key)+ â””â”€â”€ .gitignore                     # Git ignore rules for Python, cache, and secrets+ áIO2%1 README.md                      # Project documentation+ áIO2%1 requirements.txt               # Unified project requirements+ â””â”€â”€ run_dashboard.bat              # Root 1-click launcher for Windows

```

---

## ğŸšª Quick Start

1. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```

2. **Configure API Key (Optional)**
   ```bash
   copy .env.example .env
   ```

3. **Launch the Dashboard**
   ``bash
   python -m streamlit run dashboard/app.py
   ```
   *Or double-click `run_dashboard.bat` on Windows.*

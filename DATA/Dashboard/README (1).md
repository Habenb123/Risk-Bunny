# UPI Fraud Ring & Merchant Analytics

A Streamlit dashboard for analysing UPI transaction activity, operational risk,
merchant exposure, and chargeback complaints using the supplied cleaned datasets.

## Run locally

Install the project dependencies:

```powershell
python -m pip install -r requirements.txt
```

Start the dashboard:

```powershell
python -m streamlit run app.py
```

## Dashboard sections

- **Executive Overview** — transaction volume, payment value, success rate, and chargeback ratio.
- **Fraud & Risk** — KYC and merchant-match exceptions, UTR issues, risk segments, severity, and reasons.
- **Merchant Analytics** — category exposure, merchant performance, and chargeback-ratio ranking.
- **Chargeback Analytics** — disputed amounts, status, reporting trend, delay, severity, channel, and case details.

## Data sources

The dashboard reads the existing files in `data/` without modifying them:

- `dim_customers.csv`
- `dim_merchants.csv`
- `fact_transactions.csv`
- `fact_chargebacks.csv`

## Chargeback ratio

Merchant-category chargeback ratio is calculated as:

```text
distinct transaction IDs with one or more matched chargebacks
-------------------------------------------------------------
all distinct transaction IDs in the selected filter period
```

The application retains unmatched customer and merchant IDs rather than discarding
their transaction or chargeback records.

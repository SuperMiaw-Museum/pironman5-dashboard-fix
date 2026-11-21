# Pironman 5 Dashboard Fix

A simple workaround for the Pironman 5 dashboard when it stops working due to potentially corrupted InfluxDB data.

## Compatibility

- **Tested version:** Pironman 5 software `1.2.18`
- **Other versions:** Not tested
- **Platform:** Raspberry Pi OS

## What it does

The script:

1. Stops the Pironman 5 service.
2. Stops InfluxDB to avoid modifying its files while running.
3. Removes the `pironman5` database files from InfluxDB.
4. Restarts InfluxDB and the Pironman 5 service.

**Warning:** This permanently deletes the Pironman 5 metrics history stored in InfluxDB. Other databases are not intentionally removed.

## Usage

Clone the repository:

```sh
git clone https://github.com/<YOUR_USERNAME>/pironman5-dashboard-fix.git
cd pironman5-dashboard-fix
```

Review the script before running it:

```sh
cat fix_dashboard.sh
```

Run the fix:

```sh
sudo bash fix_dashboard.sh
```

After completion, check whether the dashboard is accessible again.

## Disclaimer

This is an unofficial workaround, not an official SunFounder fix.

service pironman5 start
It has only been tested with Pironman 5 software version `1.2.18`. Use at your own risk.

#!/usr/bin/env bash
set -euo pipefail

if (( EUID != 0 )); then
    echo "❌ Run this script with sudo." >&2
    exit 1
fi

echo "🛑 Stopping Pironman 5 and InfluxDB..."
systemctl stop pironman5
systemctl stop influxdb

echo "🗑️ Removing Pironman 5 InfluxDB data..."
rm -rf -- /var/lib/influxdb/data/pironman5
rm -rf -- /var/lib/influxdb/wal/pironman5

echo "🚀 Starting InfluxDB and Pironman 5..."
systemctl start influxdb
systemctl start pironman5

echo "✅ Done."

#!/usr/local/bin/bash

# Ambil hanya bagian [Coretemp] dari output hwstat
OUTPUT=$(hwstat 2>/dev/null | sed -n '/\[Coretemp\]/,/^$/p' | grep -v '^$')

# Ekstrak suhu dari CPU0
TEMP=$(echo "$OUTPUT" | grep "CPU0:" | awk '{print $2}' | sed 's/°C//')

if [ -z "$TEMP" ]; then
    TEMP="--"
fi

# Buat tooltip hanya dari informasi Coretemp (tanpa sed multiline yang error)
TOOLTIP=$(echo "$OUTPUT" | awk '{printf "%s\\n", $0}')

# Output JSON untuk Waybar
echo "{\"text\": \"${TEMP}°C\", \"tooltip\": \"${TOOLTIP}\", \"class\": \"cpu_temp\"}"

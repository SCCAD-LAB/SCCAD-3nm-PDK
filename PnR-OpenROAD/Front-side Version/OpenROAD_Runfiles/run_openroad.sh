#!/usr/bin/env bash
set -euo pipefail

# Portable launcher for the OpenROAD run files in this directory.
# Usage:
#   OPENROAD_BIN=/path/to/openroad bash run_openroad.sh 3nm_run.tcl
#   OPENROAD_THREADS=32 OPENROAD_BIN=/path/to/openroad bash run_openroad.sh 3nm_run.tcl

SCRIPT="${1:-3nm_run.tcl}"
THREADS="${OPENROAD_THREADS:-16}"
OPENROAD_BIN="${OPENROAD_BIN:-openroad}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR"

export OPENROAD_THREADS="$THREADS"
export PDK_ROOT="${PDK_ROOT:-$(cd "$SCRIPT_DIR/../../.." && pwd)}"

LOG="${SCRIPT%.tcl}.log"
echo "Script: $SCRIPT"
echo "OpenROAD: $OPENROAD_BIN"
echo "Threads: $OPENROAD_THREADS"
echo "PDK_ROOT: $PDK_ROOT"
echo "Log: $LOG"

"$OPENROAD_BIN" -no_init "$SCRIPT" | tee "$LOG"

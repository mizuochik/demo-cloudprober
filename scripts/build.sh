#!/bin/bash

set -eu

mkdir -p build

go build -o build/success_probe ./cmd/success_probe

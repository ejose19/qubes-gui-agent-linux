#!/bin/bash

set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]:-$0}")"

version=16.0
directory=pulsecore-$version

mkdir -- "$directory"
cd -- "$directory"

curl "https://gitlab.freedesktop.org/pulseaudio/pulseaudio/-/archive/v${version}/pulseaudio-v$version.tar.gz?path=src%2Fpulsecore" | tar -xvz --strip-components=3

find . -type f ! -name "*.h" -exec rm -- {} \;
find . -type l -exec rm -- {} \;

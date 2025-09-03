#!/bin/bash

set -e

cd frontend
pnpm install
pnpm generate
cp -r .output/public ../mealie/frontend
cd ..
python3 -m venv venv
source venv/bin/activate
poetry install --compile
poetry build
pip install dist/mealie-3.1.2-py3-none-any.whl
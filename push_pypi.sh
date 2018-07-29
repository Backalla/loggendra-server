#!/bin/bash
echo "Removing older dist"
rm -rf dist/
echo "Building new version"
python3 setup.py sdist bdist_wheel
echo "Uploading to PyPi"
twine upload dist/*
# Measurement

Performance measurement done on the server, store results in a simple file.

View results in the browser.

# To do list

 * support multiple tabs
 * support multiple branches
 * "commit" column is missing from summary file (fix in GH core)

# Usage

1. Run measurement script

./measurement.sh

2. Install Server to serve measurement data

Either configure nginx or for localhost do:

npm install http-server -g
http-server --cors -a localhost -c 10

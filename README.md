# Measurement

Performance measurement done on the server, store results in a simple file.

View results in the browser.

# To do list

 * support multiple tabs
 * support multiple branches
 * use error bars if same commit

# Usage

1. Run measurement X times

```
X=4
SUMMARY=out.dat
java -Xmx6g -Xms6g -Duser.country=UK -Duser.language=en -cp gh-tools.jar com.graphhopper.tools.Measurement datareader.file=germany-latest.osm.pbf measurement.clean=true measurement.summaryfile=$SUMMARY measurement.repeats=$X prepare.ch.weightings=fastest prepare.lm.weightings=fastest graph.flag_encoders=car prepare.min_network_size=10000 prepare.min_oneway_network_size=10000
# repeat for different commits but keep using the same summary file
```

2. Install Server to serve measurement data

Either configure nginx or for localhost do:

npm install http-server -g
http-server -o --cors -a localhost

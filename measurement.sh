OSM_FILE="europe_germany.pbf"
JAVA_OPTS="-Xmx4g -Xms4g -Duser.country=UK -Duser.language=en"
# TODO "commit" column is missing from summary file
PROG_OPTS="datareader.file=$OSM_FILE measurement.clean=true measurement.summaryfile=master-compare.dat measurement.repeats=4 prepare.ch.weightings=fastest prepare.lm.weightings=fastest \
	graph.flag_encoders=car prepare.min_network_size=10000 prepare.min_oneway_network_size=10000"
	
JARS=*.jar
for JAR in $JARS
do
echo "run $JAR"
java $JAVA_OPTS -cp $JAR com.graphhopper.tools.Measurement $PROG_OPTS
done

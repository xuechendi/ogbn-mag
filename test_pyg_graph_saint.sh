LOGFILE="test_cpu_pyg_graph_saint_test.log"
TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
echo "$TIMESTAMP" > $LOGFILE
start_time="$(date -u +%s)"

python -u ogb/examples/nodeproppred/mag/graph_saint.py | tee -a test_cpu_dgl_graph_saint.log

echo "$TIMESTAMP" >> $LOGFILE
end_time="$(date -u +%s)"
elapsed="$(($end_time-$start_time))"
echo "Total Elapsed Time is: "$elapsed >> $LOGFILE

LOGFILE="test_cpu_pyg_heterorgcn.log"
TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
echo "$TIMESTAMP" > $LOGFILE
start_time="$(date -u +%s)"

python -u ogb/examples/nodeproppred/mag/sampler.py | tee -a ${LOGFILE}

echo "$TIMESTAMP" >> $LOGFILE
end_time="$(date -u +%s)"
elapsed="$(($end_time-$start_time))"
echo "Total Elapsed Time is: "$elapsed >> $LOGFILE

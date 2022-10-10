LOG_PATH=""
LOGFILE=${LOG_PATH}"test_dgl_rgcn_2.log"
TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
echo "$TIMESTAMP" > $LOGFILE
start_time="$(date -u +%s)"
python -u dgl/examples/pytorch/ogb/ogbn-mag/hetero_rgcn.py | tee -a ${LOGFILE}
echo "$TIMESTAMP" >> $LOGFILE
end_time="$(date -u +%s)"
elapsed="$(($end_time-$start_time))"
echo "Total Elapsed Time is: "$elapsed >> $LOGFILE

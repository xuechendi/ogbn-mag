export OMP_SCHEDULE=STATIC
export OMP_PROC_BIND=CLOSE
export GOMP_CPU_AFFINITY="0-95"
LOG_PATH=""
LOGFILE=${LOG_PATH}"test_dgl_sign.log"
TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
echo "$TIMESTAMP" > $LOGFILE
start_time="$(date -u +%s)"
python -u dgl/examples/pytorch/ogb/sign/sign.py --gpu -1 --num-runs 1 | tee -a ${LOGFILE}
echo "$TIMESTAMP" >> $LOGFILE
end_time="$(date -u +%s)"
elapsed="$(($end_time-$start_time))"
echo "Total Elapsed Time is: "$elapsed >> $LOGFILE

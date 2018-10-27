# 1/15
#
#


export JAVA_HOME=/usr/java/j2sdk1.4.2_17
export ANT_HOME=/pvcs2/apache-ant-1.7.0
export LOCAL_DIR=/build/CM_DIM_TLS/CM_ouou_TLS/dev/build_ws
export DMCLI_DIR=\\build\\CM_jgfsd_TLS\\CM_uikn_TLS\\dev\\build_ws
export PATH=$PATH:$ANT_HOME:$LOCAL_DIR

export FILE1=$LOCAL_DIR/PR35.properties

DATE=`date +'%%Y%%m%%d%%H%%M'`
LOG_FILE_NAME=CM_DIM_TLS_GET_MANUALS_log$DATE
ERROR_FILE_NAME=CM_DIM_TLS_GET_MANUALS_errorlog$DATE

# This directs std error to the error file
exec 2> $LOCAL_DIR/log/$ERROR_FILE_NAME

echo "******************************************"   > $LOCAL_DIR/log/$LOG_FILE_NAME
echo     JAVA_HOME = $JAVA_HOME                    >> $LOCAL_DIR/log/$LOG_FILE_NAME
echo          PATH = $PATH                         >> $LOCAL_DIR/log/$LOG_FILE_NAME
echo LOG_FILE_NAME = $LOG_FILE_NAME                >> $LOCAL_DIR/log/$LOG_FILE_NAME
echo "******************************************"  >> $LOCAL_DIR/log/$LOG_FILE_NAME

cd /opt/serena/dimensions/10.v/cm                  >> $LOCAL_DIR/log/$LOG_FILE_NAME
. ./dmprofile

cd $LOCAL_DIR

/opt/serena/dimensions/10.1/cm/prog/dmcli -param $FILE1 -cmd "DOWNLOAD /WORKSET=khf_DIM_TLS:CoooooLS /DIRECTORY="Documentation\\Manuals" /RECURSIVE /USER_DIRECTORY="$DMCLI_DIR\\build_out" /OVERWRITE /NOMETADATA" >> $LOCAL_DIR/log/$LOG_FILE_NAME

echo "---------    BEGIN ERROR MESSAGES  -------" >>  $LOCAL_DIR/log/$LOG_FILE_NAME
cat $LOCAL_DIR/log/$ERROR_FILE_NAME               >>  $LOCAL_DIR/log/$LOG_FILE_NAME
echo "---------    END ERROR MESSAGES    -------" >>  $LOCAL_DIR/log/$LOG_FILE_NAME

echo "                                          " >> $LOCAL_DIR/log/$LOG_FILE_NAME
echo "******************************************" >> $LOCAL_DIR/log/$LOG_FILE_NAME
echo "-----  END OF PROCESS                -----" >> $LOCAL_DIR/log/$LOG_FILE_NAME
echo "******************************************" >> $LOCAL_DIR/log/$LOG_FILE_NAME

mail -s "CM TOOLS GET MANUALS on varhpr35" _consultant@jjjj.com < $LOCAL_DIR/log/$LOG_FILE_NAME


EngineName=logging-service
DIRECTORY=/home/admin/YTrail/
CLASSPATH="./lib/${EngineName}.jar"

for i in `ls ${DIRECTORY}lib/*.jar`
do
  CLASSPATH=${CLASSPATH}:${i}
done


CLASSPATH=${CLASSPATH}:${DIRECTORY}config/

#echo ${CLASSPATH};

#JAVA_HOME=/usr/lib/jvm/jdk1.7.0/bin/
JAVA_HOME="/home/admin/Generic_inquiry/jdk1.8.0_191/bin/java"
JAVA="com.asset.loggingService.LoggingServiceApplication"
PROCESS=${JAVA_HOME}" -Xmx2G -cp "${CLASSPATH}" "${JAVA}

#echo ${PROCESS};

pgrep -f "./lib/${EngineName}.jar" >/dev/null 2>/dev/null

RESULT=$?
#echo ${RESULT}

case "$1" in
'start')   
               if [ ${RESULT} -eq 0 ]
               then
                              echo `date` " | Not starting; ${EngineName} PROCESS is already running."
               else
                              if [ -f ${DIRECTORY}"lib/${EngineName}.jar" ]
                              then                                     
                                             cd ${DIRECTORY}
                                             #--------------------Check if this is the online node-------------------------------

                                                            echo `date` " | Starting PROCESS.";
                                                            #nohup ${PROCESS} > /dev/null 2> /dev/null &
                                                             ${PROCESS} >/dev/null 2> ${DIRECTORY}${EngineName}.err &
 
                                             #-------------------------------------------------------------------------------------------
                              else
                                             echo `date` " | Unable to start ${EngineName} PROCESS; PROCESS not found."
                              fi
               fi
               ;;
'stop') 
               if [ ${RESULT} -eq 0 ]
               then
                              echo `date` " | Stopping PROCESS."
                              pkill -f "./lib/${EngineName}.jar"
                              echo `date` " | Waiting for ${EngineName} PROCESS to terminate."
				  typeset -i COUNTER
                              COUNTER=0
                              while [ ${COUNTER} -lt 13 ] && [ ${RESULT} -eq 0 ]
                              do
                                             echo `date` " | Lap (${COUNTER})..."
                                             sleep 5
                                             pgrep -f "./lib/${EngineName}.jar" >/dev/null 2>/dev/null
                                             RESULT=$?
                                             COUNTER=COUNTER+1
                              done
                              if [ ${RESULT} -eq 0 ]
                              then
                                             pkill -9 -f "./lib/${EngineName}.jar"
                                             while [ ${RESULT} -eq 0 ]
                                             do
                                                            sleep 5
                                                            pgrep -f "./lib/${EngineName}.jar" >/dev/null 2> /dev/null
                                                            RESULT=$?
                                             done
                                             echo `date` " | ${EngineName} PROCESS stopped (forcibly)."
                              else
                                             echo `date` " | ${EngineName} PROCESS stopped (gracefully)."
                              fi
               else
                              echo `date` " | Not stopping; ${EngineName} PROCESS is not running.";
               fi
               ;;
'check')
               if [ ${RESULT} -eq 0 ]
               then
                              echo `date` " | ${EngineName} PROCESS is running."
               else
                              echo `date` " | ${EngineName} is NOT running."
               fi
               ;;
*)
               echo "Usage: $0 { start | stop | check }"
               exit 1
               ;;
esac
exit 0

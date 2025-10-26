//RUN AS ADMINISTRATOR
java -version 
hadoop version
start-dfs.cmd 
start-yarn.cmd
jps
hadoop fs -mkdir /user/test

//To get List the contents of a directory.

hadoop fs -ls /user/test

//Upload a file/files in HDFS.

hadoop fs -put /home/yourusername/sample.txt /user/test/

//Upload a file/files in HDFS.

hadoop fs -get /user/test/sample.txt /home/yourusername/

//See contents of a file

hadoop fs -cat /user/test/sample.txt

//Remove a file or directory in HDFS.

hadoop fs -rm /user/test/sample.txt

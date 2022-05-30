pip
pwd
ls
ls
ls
clear
ifconfig
ipconfig
#!/bin/sh
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# -----------------------------------------------------------------------------
#  Set JAVA_HOME or JRE_HOME if not already set, ensure any provided settings
#  are valid and consistent with the selected start-up options and set up the
#  endorsed directory.
# -----------------------------------------------------------------------------
# Make sure prerequisite environment variables are set
if [ -z "$JAVA_HOME" -a -z "$JRE_HOME" ]; then   if $darwin; then     if [ -x '/usr/libexec/java_home' ] ; then       export JAVA_HOME=`/usr/libexec/java_home`     elif [ -d "/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home" ]; then       export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home";     fi;   else     JAVA_PATH=`which java 2>/dev/null`;     if [ "x$JAVA_PATH" != "x" ]; then       JAVA_PATH=`dirname $JAVA_PATH 2>/dev/null`;       JRE_HOME=`dirname $JAVA_PATH 2>/dev/null`;     fi;     if [ "x$JRE_HOME" = "x" ]; then       if [ -x /usr/bin/java ]; then         JRE_HOME=/usr;       fi;     fi;   fi;   if [ -z "$JAVA_HOME" -a -z "$JRE_HOME" ]; then     echo "Neither the JAVA_HOME nor the JRE_HOME environment variable is defined";     echo "At least one of these environment variable is needed to run this program";     exit 1;   fi; fi
pwd
cd D:
ls
cd Program\ Files
ls
cd apache-tomcat-7.0.96-windows-x64
ls
cd apache-tomcat-7.0.96/bin/
l
sls
ls
vim setclasspath.bat 
exit
#!/bin/sh
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# -----------------------------------------------------------------------------
# Start Script for the CATALINA Server
# -----------------------------------------------------------------------------
# Better OS/400 detection: see Bugzilla 31132
os400=false
case "`uname`" in OS400*) os400=true;; esac
# resolve links - $0 may be a softlink
PRG="$0"
while [ -h "$PRG" ] ; do   ls=`ls -ld "$PRG"`;   link=`expr "$ls" : '.*-> \(.*\)$'`;   if expr "$link" : '/.*' > /dev/null; then     PRG="$link";   else     PRG=`dirname "$PRG"`/"$link";   fi; done
PRGDIR=`dirname "$PRG"`
EXECUTABLE=catalina.sh
# Check that target executable exists
if $os400; then   eval; else   if [ ! -x "$PRGDIR"/"$EXECUTABLE" ]; then     echo "Cannot find $PRGDIR/$EXECUTABLE";     echo "The file is absent or does not have execute permission";     echo "This file is needed to run this program";     exit 1;   fi; fi
exec "$PRGDIR"/"$EXECUTABLE" start "$@"

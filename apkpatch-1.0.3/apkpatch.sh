#!/bin/sh

#
# ApkPatch - a tool for build/merge Android Patch file (.apatch).
# Copyright 2015 supern lee <sanping.li@alipay.com>
# 
# 	http://gitlab.alibaba-inc.com/groups/euler/CloudFix
#
PRG="$0"
while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done
PRGDIR=`dirname "$PRG"`

java -Xms512m -Xmx1024m -jar $PRGDIR/apkpatch-1.0.3.jar "$@"
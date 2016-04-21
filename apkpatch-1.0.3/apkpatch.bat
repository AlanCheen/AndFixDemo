@echo off

REM
REM ApkPatch - a tool for build/merge Android Patch file (.apatch).
REM Copyright 2015 supern lee <sanping.li@alipay.com>
REM 
REM 	http://gitlab.alibaba-inc.com/groups/euler/CloudFix
REM

java -Xms512m -Xmx1024m -jar "%~dp0apkpatch-1.0.3.jar"  %*

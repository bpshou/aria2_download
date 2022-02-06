@echo off
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("%~fs0 h",0)(window.close)&&exit
:begin

start /b ../aria2/aria2c --conf-path "./aria2-rpc.conf"

echo "aria2 RPC start successful"

exit

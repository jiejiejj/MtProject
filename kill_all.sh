# kill all the process of run.py
ps -ef|grep run.py|grep -v grep|cut -c 9-15|xargs kill -9